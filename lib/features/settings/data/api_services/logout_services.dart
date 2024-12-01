import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/logout/logout_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class LogoutApiServices {
  static final Dio _dio = DioConfig.getDio();

  static Future<ApiResult<LogoutModel>> logOut() {
    return ApiCallHandler.handleApiCall(apiCall: () {
      _dio.options.headers.addAll({
        'Accept-Language': Get.locale!.languageCode,
      });
      return _dio.post(
        AppStrings.logout,
        data: {},
      );
    }, parser: ({required data}) {
      if (data['data'] is Map<String, dynamic>) {
        // If 'data' is a map, parse it normally
        return LogoutModel.fromJson(data['data']);
      } else if (data['data'] is List) {
        // If 'data' is a list, return a default LogoutModel instance
        return LogoutModel(
          status: data['status'] ?? 'unknown', // default or fetched status
          message:
              data['message'] ?? 'No message', // default or fetched message
          data: [], // empty list for data
        );
      } else {
        throw Exception("Unexpected 'data' type in response");
      }
    });
  }

// static Future<ApiResult<LogoutModel>>logOut(){
  //   return ApiCallHandler.handleApiCall(apiCall: (){
  //     _dio.options.headers.addAll({
  //       'Accept-Language': Get.locale!.languageCode,
  //     });
  //     return _dio.post(
  //       AppStrings.logout,
  //       data: {},
  //     );
  //   }, parser: ({required data}){
  //     return LogoutModel.fromJson(data['data']);
  //   });
  // }
}
