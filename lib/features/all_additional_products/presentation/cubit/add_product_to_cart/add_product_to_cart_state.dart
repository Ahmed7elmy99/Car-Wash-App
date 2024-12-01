part of 'add_product_to_cart_cubit.dart'; 

@freezed
class AddProductToCartState<T> with _$AddProductToCartState {
  const factory AddProductToCartState.initial() = AddProductToCartInitial;
  
  const factory AddProductToCartState.loading({required String productId}) = AddProductToCartLoading;
  
  const factory AddProductToCartState.success(T cartItem) = AddProductToCartSuccess<T>;
  
  const factory AddProductToCartState.failure({required ApiErrorHandler error}) = AddProductToCartError;
}
