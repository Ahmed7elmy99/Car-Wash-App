part of 'all_services_cubit.dart';

@freezed
class AllServicesState<T> with _$AllServicesState {
  const factory AllServicesState.allServiceInitial() = AllServicesInitial;
  const factory AllServicesState.allServiceLoading() = AllServicesLoading;
  const factory AllServicesState.allServiceSuccess(T allServices) =
      AllServicesSuccess<T>;
  const factory AllServicesState.allServiceError(
      {required ApiErrorHandler error}) = AllServicesError;
}
