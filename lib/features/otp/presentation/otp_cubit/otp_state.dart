part of 'otp_cubit.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState.initial() = _Initial;
  const factory OtpState.loading() = OtpLoading;
  const factory OtpState.success() = OtpSuccess;
  const factory OtpState.error({required ApiErrorHandler error}) = OtpFailure;

  // states for resend code
  const factory OtpState.resendCodeloading() = ResendCodeLoading;
  const factory OtpState.resendCodesuccess() = ResendCodeSuccess;
  const factory OtpState.resendCodefailure(ApiErrorHandler error) =
      ResendCodeFailure;
}
