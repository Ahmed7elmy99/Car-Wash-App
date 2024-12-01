import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/cars_types/cars_types_model.dart';

import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';

class CarTypesService {
  static final Dio _dio = DioConfig.getDio();
  static Future<ApiResult<List<CarsTypesModel>>> getCarTypes() async {
    return ApiCallHandler.handleApiCall<List<CarsTypesModel>>(
      apiCall: () {
        return _dio.get(AppStrings.carTypes);
      },
      parser: ({required data}) {
        return (data['data'] as List<dynamic>)
            .map((carTypes) => CarsTypesModel.fromJson(carTypes))
            .toList();
      },
    );
  }
}
