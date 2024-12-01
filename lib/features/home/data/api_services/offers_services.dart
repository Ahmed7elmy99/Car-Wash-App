import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/offers/offers_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class OffersApiServices {
  static final Dio _dio = DioConfig.getDio();

  ///TO GET OFFERS DATA
  static Future<ApiResult<List<OffersModel>>> getOffersServices() {
    return ApiCallHandler.handleApiCall(apiCall: () {
      _dio.options.headers.addAll({
        'Accept-Language': Get.locale!.languageCode,
      });
      return _dio.get(AppStrings.offers);
    }, parser: ({required data}) {
      print('Raw API Response: $data'); // Log the raw API response
      if (data == null || data['data'] == null) {
        print('No offers found in API response');
        return [];
      }
      List offersData = data['data'];
      return offersData
          .map((offerJson) => OffersModel.fromJson(offerJson))
          .toList();
    });
  }
}
