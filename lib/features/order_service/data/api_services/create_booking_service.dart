// Created by: Nadeen Mohamed
// Created at date: 5/11/2024
// Create CreateBookingService
import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/booking/detailed_booking_data.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class CreateBookingService {
  static final Dio _dio = DioConfig.getDio();

  static Future<ApiResult<DetailedBookingData>> createBooking({
    required String implementationLocation,
    required String implementationDate,
    required String implementationTime,
    // Edited by: Nadeen Mohamed
    // Edited at date: 7/11/2024
    // Edit note: Add serviceId, carId and addressId parameters as String
    required String serviceId,
    required String carId,
    String? addressId,
    String? branchId,
  }) async {
    final Map<String, dynamic> body = {
      'implementation_location': implementationLocation,
      'service_id': serviceId,
      'my_car_id': carId,
      'implementation_date': implementationDate,
      'implementation_time': implementationTime,
    };
    if (addressId == null) {
      body['branch_id'] = branchId;
    } else{
      body['address_id'] = addressId;
    }
    return ApiCallHandler.handleApiCall<DetailedBookingData>(apiCall: () {
      _dio.options.headers.addAll({
        'Accept-Language': Get.locale!.languageCode,
      });
      return _dio.post(
        AppStrings.createBooking,
        data: body,
      );
    }, parser: ({required data}) {
      return DetailedBookingData.fromJson(data['data']);
    });
  }
}
