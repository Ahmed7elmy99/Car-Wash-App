part of 'profile_add_plan_to_cart_cubit.dart';

@freezed
class ProfileAddPlanToCartState<T> with _$ProfileAddPlanToCartState<T> {
  const factory ProfileAddPlanToCartState.initial() = _Initial;
  const factory ProfileAddPlanToCartState.loading() = AddPlanToCartLoading;
  const factory ProfileAddPlanToCartState.success(T cartItem) =
      AddPlanToCartSuccess<T>;
  const factory ProfileAddPlanToCartState.failure(
      {required ApiErrorHandler error}) = AddPlanToCartFailure;
}
