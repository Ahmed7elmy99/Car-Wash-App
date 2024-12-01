
import 'package:car_wash_mobile_app/core/models/add_product_to_cart_model/add_product_to_cart_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../../../../core/constants/app_strings.dart';
//created by omnia mohamed [5/11/2024]
class AddProductToCartService {
  static final Dio _dio = DioConfig.getDio();
  static Future<ApiResult<AddProductToCartModel>> addProductToCart({
    required dynamic productId,
  }) async {
    final Map<String, dynamic> bodyData = {
      'product_id': productId,
    };
    return ApiCallHandler.handleApiCall<AddProductToCartModel>(apiCall: () {
      _dio.options.headers.addAll({
        'Accept-Language': Get.locale!.languageCode,
      });
      return _dio.post(
        AppStrings.addToCart,
        data: bodyData,
      );
    }, parser: ({required data}) {
      return AddProductToCartModel.fromJson(data['data']);
    });
  }
}
