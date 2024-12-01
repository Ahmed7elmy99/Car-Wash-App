// Created by: Nadeen Mohamed
// Created at date: 7/11/2024
// create GetUserCarsService to get all cars for the user from api 
import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:car_wash_mobile_app/features/order_service/data/model/car_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';


class GetUserCarsService 
{
  static final Dio _dio = DioConfig.getDio();
  static Future<ApiResult<List<CarModel>>> getUserCars()
  {
    return ApiCallHandler.handleApiCall(apiCall: () {
      _dio.options.headers.addAll({
        'Accept-Language': Get.locale!.languageCode,
      });
      return _dio.get(AppStrings.useCar);
    }, parser: ({required data}) {
      print('Raw API Response: $data'); // Log the raw API response
      if (data == null || data['data'] == null) {
        print('No Cars found in API response');
        return [];
      }
      List userCars = data['data'];
      return userCars
          .map((userCarsJson) =>
              CarModel.fromJson(userCarsJson))
          .toList();
    }
    );
  }
}