part of 'add_to_cart_cubit.dart';

@freezed
class AddToCartState<T> with _$AddToCartState<T> {
  const factory AddToCartState.initial() = AddToCartInitail;
  const factory AddToCartState.loading({required String planId}) = AddToCartLoading;
  const factory AddToCartState.success(T cartItem) = AddToCartSuccess<T>;
  const factory AddToCartState.failure({required ApiErrorHandler error}) =
      AddToCartError;
}
