import 'package:car_wash_mobile_app/core/models/all_services_model/all_services_model.dart';
import 'package:dio/dio.dart';
import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:get/get.dart';

class AllServicesApiServices {
  static final Dio _dio = DioConfig.getDio();

  ///TO GET ALL SERVICES DATA
  static Future<ApiResult<List<AllServicesModel>>> getAllServicesService() {
    return ApiCallHandler.handleApiCall(apiCall: () {
      _dio.options.headers.addAll({
        'Accept-Language': Get.locale!.languageCode,
      });
      return _dio.get(AppStrings.allServices);
    }, parser: ({required data}) {
      print('Raw API Response: $data'); // Log the raw API response
      if (data == null || data['data'] == null) {
        print('No services found in API response');
        return [];
      }
      List allServicesData = data['data'];
      return allServicesData
          .map((allServicesJson) => AllServicesModel.fromJson(allServicesJson))
          .toList();
    });
  }
}
