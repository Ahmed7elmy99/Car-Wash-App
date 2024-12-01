part of 'packages_cubit.dart';

@freezed
class PackagesState<T> with _$PackagesState<T> {
  const factory PackagesState.initial() = _Initial;
  const factory PackagesState.loading() = PackagesLoading;
  const factory PackagesState.success(T pacakges) = PackagesSuccess<T>;
  const factory PackagesState.failure(ApiErrorHandler error) = PackagesFailure;

  // renew states
  const factory PackagesState.renewLoading() = RenewUserPackagesLoading;
  const factory PackagesState.renewSuccess() = RenewUserPlanSuccess;
  const factory PackagesState.renewFailure(ApiErrorHandler error) =
      RenewUserPlanFailure;

  //all plans state
  const factory PackagesState.allPlansInitial() = AllPlansInitial;
  const factory PackagesState.allPlansLoading() = AllPlansLoading;
  const factory PackagesState.allPlansSuccess(T allPlans) = AllPlansSuccess<T>;
  const factory PackagesState.allPlansError({required ApiErrorHandler error}) =
      AllPlansError;

  //plan info
  const factory PackagesState.PlanInfoInitial() = PlanInfoInitial;
  const factory PackagesState.PlanInfoLoading() = PlanInfoLoading;
  const factory PackagesState.PlanInfoSuccess(SinglePlanInfoModel plan) =
      PlanInfoSuccess;
  const factory PackagesState.PlanInfoError({required ApiErrorHandler error}) =
      PlanInfoError;



  const factory PackagesState.resrvationInitial() = ResrvationInitial;
  const factory PackagesState.resrvationLoading() = ResrvationLoading;
  const factory PackagesState.resrvationSuccess(bool success) =
      resrvationSuccess;
  const factory PackagesState.resrvationError({required ApiErrorHandler error}) =
      resrvationError;

}
