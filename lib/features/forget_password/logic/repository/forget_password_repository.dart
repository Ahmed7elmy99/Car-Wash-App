import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/forget_password/data/api_service/forget_password_service.dart';

class ForgetPasswordRepository {
  static Future<ApiResult> forgetPassword({required String phoneNumber}) {
    return ForgetPasswordService.forgetPassword(phoneNumber: phoneNumber);
  }

  static Future<ApiResult> resetPassword(
      {required String phoneNumber,
      required String code,
      required String newPassword}) {
    return ForgetPasswordService.resetPassword(
      phoneNumber: phoneNumber,
      newPassword: newPassword,
      code: code,
    );
  }

  static Future<ApiResult<void>> resendVerficationCode(
      {required String mobileNumber}) {
    return ForgetPasswordService.resendCode(mobileNumber);
  }
}
