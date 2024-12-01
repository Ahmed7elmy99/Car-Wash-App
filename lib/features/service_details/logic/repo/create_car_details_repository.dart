import 'dart:io';

import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/service_details/data/api_service/create_car_details_service.dart';

class CreateCarDetailsRepository {
  static Future<ApiResult<dynamic>> createCarDetails(
      {required String carColor,
      required String carNubmer,
      required String carName,
      required String isDefault,
      required int carId,
      required File image}) async {
    return await CreateCarDetailsService.createCarDetails(
        carColor: carColor,
        carNubmer: carNubmer,
        carName: carName,
        isDefault: isDefault,
        carId: carId,
        image: image);
  }
}
