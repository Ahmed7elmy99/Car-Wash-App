import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/otp/data/api_service/otp_service.dart';

class OtpRepoistory {
  static Future<ApiResult<void>> sendOtp(
      {required String mobileNumber, required String otpCode}) {
    return OtpService.sendOtp(mobileNumber, otpCode);
  }

  static Future<ApiResult<void>> resendVerficationCode(
      {required String mobileNumber}) {
    return OtpService.resendCode(mobileNumber);
  }
}
