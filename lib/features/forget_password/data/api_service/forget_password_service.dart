import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';

class ForgetPasswordService {
  static final Dio _dio = DioConfig.getDio();
  static Future<ApiResult> forgetPassword({required String phoneNumber}) {
    return ApiCallHandler.handleApiCallWithoutParser(
      apiCall: () => _dio.post(
        AppStrings.forgotPassword,
        data: {
          'mobile': phoneNumber,
        },
      ),
    );
  }

  static Future<ApiResult> resetPassword({
    required String phoneNumber,
    required String newPassword,
    required String code,
  }) {
    return ApiCallHandler.handleApiCallWithoutParser(
      apiCall: () {
        return _dio.post(AppStrings.resetPassword, data: {
          "mobile": phoneNumber,
          "password": newPassword,
          "code": code
        });
      },
    );
  }

  static Future<ApiResult<void>> resendCode(String mobileNumber) {
    return ApiCallHandler.handleApiCallWithoutParser(
      apiCall: () {
        return _dio.post(AppStrings.resendCode, data: {'mobile': mobileNumber});
      },
    );
  }
}
