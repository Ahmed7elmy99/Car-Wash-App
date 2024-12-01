import 'package:car_wash_mobile_app/core/models/additional_product/additional_product_model.dart';
import 'package:dio/dio.dart';
import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:get/get.dart';
//created by omnia mohamed [3/11/2024]
class AllAdditionalProductService {
  static final Dio _dio = DioConfig.getDio();

  ///TO GET ALL SERVICES DATA
  static Future<ApiResult<List<AdditionalProductModel>>>
      getAllAdditionalProductService() {
    return ApiCallHandler.handleApiCall(apiCall: () {
      _dio.options.headers.addAll({
        'Accept-Language': Get.locale!.languageCode,
      });
      return _dio.get(AppStrings.allAdditionalProducts);
    }, parser: ({required data}) {
      print('Raw API Response: $data'); // Log the raw API response
      if (data == null || data['data'] == null) {
        print('No services found in API response');
        return [];
      }
      List allAdditionalProductsData = data['data'];
      return allAdditionalProductsData
          .map((allAdditionalProductsJson) =>
              AdditionalProductModel.fromJson(allAdditionalProductsJson))
          .toList();
    });
  }
}
