import 'package:car_wash_mobile_app/core/constants/app_strings.dart';

import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:get/utils.dart';

import '../../../../core/models/terms_conditions/terms_conditions_model.dart';

// start: created by helmy
//creat At Date (26/10/2024)
// created : terms and conditions service for calling the api

class TermsAndConditionsService {
  static final Dio _dio = DioConfig.getDio();
  static Future<ApiResult<TermsModel>> termsAndConditions() async {
    return ApiCallHandler.handleApiCall(apiCall: () {
      _dio.options.headers['Accept-Language'] = Get.locale?.languageCode;
      return _dio.get(
        AppStrings.termsAndConditions,
      );
    }, parser: ({required data}) {
      return TermsModel.fromJson(data['data']);
    });
  }
}
