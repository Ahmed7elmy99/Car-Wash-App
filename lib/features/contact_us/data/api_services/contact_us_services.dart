import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/contact_us/contact_us_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ContactUsApiServices {
  static final Dio _dio = DioConfig.getDio();

  static Future<ApiResult<ContactUsModel>> sendMessage({
    required dynamic fullName,
    required dynamic email,
    required dynamic mobile,
    required dynamic message,
  }) async {
    final Map<String, dynamic> bodyData = {
      'full_name': fullName,
      'email': email,
      'mobile': mobile,
      'message': message,
    };
    return ApiCallHandler.handleApiCall<ContactUsModel>(apiCall: () {
      _dio.options.headers.addAll({
        'Accept-Language': Get.locale!.languageCode,
      });
      return _dio.post(
        AppStrings.contactUs,
        data: bodyData,
      );
    }, parser: ({required data}) {
      return ContactUsModel.fromJson(data['data']);
    });
  }
}
