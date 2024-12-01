
part of 'remove_from_cart_cubit.dart';

@freezed
class RemoveFromCartState with _$RemoveFromCartState {
  const factory RemoveFromCartState.initial() = RemoveFromCartInitial;
  const factory RemoveFromCartState.loading() = RemoveFromCartLoading;
  const factory RemoveFromCartState.success({required RemoveFromCartModel data}) = RemoveFromCartSuccess;
  const factory RemoveFromCartState.error({required ApiErrorHandler error}) = RemoveFromCartError;

  static removeFromCart(int id) {}

}
