import 'package:bloc/bloc.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/all_additional_products/logic/repo/add_product_to_cart_repo.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/cubits/show_cart_items_cubit/show_cart_items_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_product_to_cart_state.dart';
part 'add_product_to_cart_cubit.freezed.dart';

class AddProductToCartCubit extends Cubit<AddProductToCartState> {
  final ShowCartItemsCubit showCartItemsCubit; // Inject ShowCartItemsCubit
  final AddProductToCartRepo addProductToCartRepo;
  AddProductToCartCubit({required this.showCartItemsCubit,
   required this.addProductToCartRepo})
      : super(const AddProductToCartState.initial());

  Future<void> addProductToCart({required String productId}) async {
    emit(AddProductToCartState.loading(
        productId: productId)); // Emit loading with product ID
    final response =
        await AddProductToCartRepo.addProductToCart(productId: productId);

    response.when(success: (addedItem) {
      emit(AddProductToCartState.success(addedItem));
      //edited by omnia [21/11/2024]
      // Trigger ShowCartItemsCubit to fetch updated cart
      showCartItemsCubit.getCartItems();
    }, failure: (error) {
      emit(AddProductToCartState.failure(error: error));
    });
  }
}
