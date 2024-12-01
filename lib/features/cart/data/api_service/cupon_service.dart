import 'package:car_wash_mobile_app/core/models/cupon/cupon_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_strings.dart';

// start: created by helmy
//creat At Date (30/10/2024)
// created :CuponService  for calling the api
class CuponService {
  static final Dio _dio = DioConfig.getDio();

  static Future<ApiResult<CuponModel>> addCupon(
      {required String cuponNumber}) async {
    final Map<String, dynamic> body = {
      'promo_code': cuponNumber,
    };
    return ApiCallHandler.handleApiCall<CuponModel>(
      apiCall: () {
        _dio.options.headers.addAll({
          'Accept-Language': Get.locale!.languageCode,
        });
        return _dio.post(
          AppStrings.addCoupon,
          data: body,
        );
      },
      parser: ({required data}) {
        return CuponModel.fromJson(data['data']);
      },
    );
  }
}
