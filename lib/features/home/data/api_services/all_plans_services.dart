import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/all_plans/all_plans_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AllPlansApiServices {
  static final Dio _dio = DioConfig.getDio();

  ///TO GET ALL PLANS DATA
  static Future<ApiResult<List<AllPlansModel>>> getAllPlansService() {
    return ApiCallHandler.handleApiCall(apiCall: () {
      _dio.options.headers.addAll({
        'Accept-Language': Get.locale!.languageCode,
      });
      return _dio.get(AppStrings.plans);
    }, parser: ({required data}) {
      print('Raw API Response: $data'); // Log the raw API response
      if (data == null || data['data'] == null) {
        print('No plans found in API response');
        return [];
      }
      List allPlansData = data['data'];
      return allPlansData
          .map((allPlansJson) => AllPlansModel.fromJson(allPlansJson))
          .toList();
    });
  }
}
