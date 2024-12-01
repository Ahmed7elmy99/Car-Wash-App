part of 'forget_password_cubit.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState.initial() = _Initial;
  const factory ForgetPasswordState.loading() = ForgetPasswordLoading;
  const factory ForgetPasswordState.success() = ForgetPasswordSuccess;
  const factory ForgetPasswordState.failure(ApiErrorHandler error) =
      ForgetPasswordFailure;
// states for reset password
  const factory ForgetPasswordState.resetPasswrodloading() =
      ResetPasswordLoading;
  const factory ForgetPasswordState.resetPasswrodsuccess() =
      ResetPasswordSuccess;
  const factory ForgetPasswordState.resetPasswrodfailure(
      ApiErrorHandler error) = ResetPasswordFailure;

  // states for resend code
  const factory ForgetPasswordState.resendCodeloading() = ResendCodeLoading;
  const factory ForgetPasswordState.resendCodesuccess() = ResendCodeSuccess;
  const factory ForgetPasswordState.resendCodefailure(ApiErrorHandler error) =
      ResendCodeFailure;
}
