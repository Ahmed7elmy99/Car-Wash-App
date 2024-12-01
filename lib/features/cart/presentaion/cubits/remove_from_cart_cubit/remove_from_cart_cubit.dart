import 'package:bloc/bloc.dart';
import 'package:car_wash_mobile_app/core/models/remove_from_cart/remove_from_cart_model.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/cart/logic/remove_from_cart_repo.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/cubits/show_cart_items_cubit/show_cart_items_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_from_cart_state.dart';
part 'remove_from_cart_cubit.freezed.dart';

class RemoveFromCartCubit extends Cubit<RemoveFromCartState> {
  final RemoveFromCartRepo removeFromCartRepo;
  final ShowCartItemsCubit showCartItemsCubit; // Inject ShowCartItemsCubit

  RemoveFromCartCubit({
    required this.removeFromCartRepo,
    required this.showCartItemsCubit,
  }) : super(const RemoveFromCartState.initial());

  // Method to remove an item from the cart
  void removeFromCart(int id) async {
    emit(const RemoveFromCartState.loading());

    // Fetch the result from the repository method to remove the item
    final response = await removeFromCartRepo.removeFromCart(id);

    response.when(
      success: (data) {
       
        emit(RemoveFromCartState.success(data: data));
              //edited by omnia [21/11/2024]
         // Trigger ShowCartItemsCubit to fetch updated cart
        showCartItemsCubit.getCartItems();
      },
      failure: (error) {
        emit(RemoveFromCartState.error(error: error));
      },
    );
  }
}
