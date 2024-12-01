import 'package:car_wash_mobile_app/core/models/add_to_cart/add_to_cart_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../../../../core/constants/app_strings.dart';

class AddToCartApiServices {
  static final Dio _dio = DioConfig.getDio();
  static Future<ApiResult<AddToCartModel>> addToCart({
    required dynamic planId,
  }) async {
    final Map<String, dynamic> bodyData = {
      'plan_id': planId,
    };
    return ApiCallHandler.handleApiCall<AddToCartModel>(apiCall: () {
      _dio.options.headers.addAll({
        'Accept-Language': Get.locale!.languageCode,
      });
      return _dio.post(
        AppStrings.addToCart,
        data: bodyData,
      );
    }, parser: ({required data}) {
      return AddToCartModel.fromJson(data['data']);
    });
  }

  static addProductToCart({required productId}) {}
}
