part of 'service_details_cubit.dart';

@freezed
class ServiceDetailsState with _$ServiceDetailsState {
  const factory ServiceDetailsState.initial() = serviceDetailsInitialState;
  const factory ServiceDetailsState.loading() = serviceDetailsLoadingState;
  const factory ServiceDetailsState.success() = serviceDetailsSuccessState;
  const factory ServiceDetailsState.error({required ApiErrorHandler error}) =
      serviceDetailsErrorState;
}
