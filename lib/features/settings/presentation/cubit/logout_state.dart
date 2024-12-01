part of 'logout_cubit.dart';

@freezed
class LogoutState<T> with _$LogoutState<T> {
  const factory LogoutState.initial() = LogoutStateInitail;
  const factory LogoutState.loading() = LogoutStateLoading;
  const factory LogoutState.success(T logoutUser) = LogoutStateSuccess<T>;
  const factory LogoutState.failure({required ApiErrorHandler error}) =
      LogoutStateError;
}
