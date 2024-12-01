import 'dart:io';

import 'package:car_wash_mobile_app/core/constants/app_strings.dart';

import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:get/utils.dart';

import '../../../../core/network/api_result.dart';
// start: edited by helmy
//creat At Date (11/11/2024)
// created : create car details service for calling the api

class CreateCarDetailsService {
  static final Dio _dio = DioConfig.getDio();

  static Future<ApiResult<dynamic>> createCarDetails({
    required String carNubmer,
    required String carName,
    required String isDefault,
    required String carColor,
    required int carId,
    required File image,
  }) async {
    // Convert file to MultipartFile
    final carImageFile = await MultipartFile.fromFile(image.path,
        filename: image.path.split('/').last);

    // Prepare FormData
    final formData = FormData.fromMap({
      'car_number': carNubmer,
      'car_name': carName,
      'color_car': carColor,
      'is_default': isDefault,
      'car_type_id': carId,
      'image_car': carImageFile,
    });

    return ApiCallHandler.handleApiCall(apiCall: () {
      _dio.options.headers['Accept-Language'] = Get.locale?.languageCode;
      return _dio.post(
        AppStrings.carDetails,
        data: formData,
      );
    }, parser: ({required data}) {
      //commented by helmy (11/11/2024)
      // Check if `data` or `data['data']` is null
      // if (data == null || data['data'] == null) {
      //   throw Exception("The API response is missing 'data' or the response is null.");
      // }
      // return CarDetailsModel.fromJson(data['data']as Map<String, dynamic>);
    });
  }
}
