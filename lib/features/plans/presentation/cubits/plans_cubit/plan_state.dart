part of 'plans_cubit.dart';

@freezed
class PlansState<T> with _$PlansState<T> {
  const factory PlansState.plansInitial() = PlansInitial;
  const factory PlansState.plansLoading() = PlansLoading;
  const factory PlansState.plansSuccess(T plans) = PlansSuccess<T>;
  const factory PlansState.plansError({required ApiErrorHandler error}) =
      PlansError;
}
