// Created by: Nadeen Mohamed
// Created at date: 27/10/2024
// ShowCartItemsCubit for handling cart items logic
import 'package:car_wash_mobile_app/core/models/cart/cart_model.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/core/utils/storage.dart';
import 'package:car_wash_mobile_app/features/cart/logic/cart_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_cart_items_cubit.freezed.dart';
part 'show_cart_items_state.dart';

class ShowCartItemsCubit extends Cubit<ShowCartItemsState> {
  static ShowCartItemsCubit get(context) => BlocProvider.of(context);
  CartItemModel? cartItemModel;

  ShowCartItemsCubit() : super(const ShowCartItemsState.initial());

  // Method to fetch cart items
  void getCartItems() async {
    emit(const ShowCartItemsLoading());
    print("Fetching cart items...");

    final response = await CartRepo.getCartItems();
    response.when(
      success: (fetchedCartItems) {
        cartItemModel = fetchedCartItems;
        Storage.instance.storage.write(
            key: "invoiceValue", value: cartItemModel!.totalPrice.toString());
        print("Fetched ${fetchedCartItems.data.length} items successfully.");
        emit(ShowCartItemsSuccess<CartItemModel>(fetchedCartItems,
            totalPrice: fetchedCartItems.totalPrice));
      },
      failure: (error) {
        print("Failed to fetch cart items: ${error.statusMessage}");
        emit(ShowCartItemsFailure(error: error));
      },
    );
  }
}
