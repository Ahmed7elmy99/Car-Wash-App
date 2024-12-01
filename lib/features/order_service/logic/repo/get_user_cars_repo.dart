// Created by: Nadeen Mohamed
// Created at date: 7//11/2024
// Create GetUserCarsRepo to create
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/order_service/data/api_services/get_user_cars_service.dart';
import 'package:car_wash_mobile_app/features/order_service/data/model/car_model.dart';

class GetUserCarsRepo {
  static Future<ApiResult<List<CarModel>>> getAllCars() async {
    final allCars = await GetUserCarsService.getUserCars();
    return allCars;
  }
}
