import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';

class OtpService {
  static final Dio _dio = DioConfig.getDio();
  static Future<ApiResult<void>> sendOtp(
      String mobileNumber, String verficationCode) async {
    return ApiCallHandler.handleApiCallWithoutParser(
      apiCall: () => _dio.post(
        AppStrings.verfication,
        data: {
          'mobile': mobileNumber,
          'verification_code': verficationCode,
        },
      ),
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
