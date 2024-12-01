part of 'all_plans_cubit.dart';

@freezed
class AllPlansState<T> with _$AllPlansState {
  const factory AllPlansState.allPlansInitial() = AllPlansInitial;
  const factory AllPlansState.allPlansLoading() = AllPlansLoading;
  const factory AllPlansState.allPlansSuccess(T allPlans) = AllPlansSuccess<T>;
  const factory AllPlansState.allPlansError({required ApiErrorHandler error}) =
      AllPlansError;
}
