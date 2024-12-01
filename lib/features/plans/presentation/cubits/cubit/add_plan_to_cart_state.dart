part of 'add_plan_to_cart_cubit.dart';

@freezed
class AddPlanToCartState<T> with _$AddPlanToCartState<T> {
  const factory AddPlanToCartState.initial() = _Initial;
  const factory AddPlanToCartState.loading() = AddPlanToCartLoading;
  const factory AddPlanToCartState.success(T cartItem) =
      AddPlanToCartSuccess<T>;
  const factory AddPlanToCartState.failure({required ApiErrorHandler error}) =
      AddPlanToCartFailure;
}
