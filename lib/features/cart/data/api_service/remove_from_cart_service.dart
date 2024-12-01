import 'package:car_wash_mobile_app/core/models/remove_from_cart/remove_from_cart_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../../../../core/constants/app_strings.dart';

//created by omnia mohamed [11/11/2024]
class RemoveFromCartService {
  static final Dio _dio = DioConfig.getDio();

  static Future<ApiResult<RemoveFromCartModel>> deleteProduct({
    required dynamic itemId,
  }) async {
    return ApiCallHandler.handleApiCall<RemoveFromCartModel>(apiCall: () {
      _dio.options.headers.addAll({
        'Accept-Language': Get.locale!.languageCode,
      });
    return _dio.post(
  '${AppStrings.removeFromCart}/$itemId',  // Append itemId here
);
    }, parser: ({required data}) {
      return RemoveFromCartModel.fromJson(data);
    });
  }
}
