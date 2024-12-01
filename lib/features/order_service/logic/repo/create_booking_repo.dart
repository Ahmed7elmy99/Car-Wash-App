// Created by: Nadeen Mohamed
// Created at date: 5/11/2024
// Create CreateBookingRepo
import 'package:car_wash_mobile_app/core/models/booking/detailed_booking_data.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/order_service/data/api_services/create_booking_service.dart';

class CreateBookingRepo {
  static Future<ApiResult<DetailedBookingData>> createBooking({
    required String implementationLocation,
    required String implementationDate,
    required String implementationTime,
    // Edited by: Nadeen Mohamed
    // Edited at date: 7/11/2024
    // Edit note: add serviceId, carId and addressId as String
    required String serviceId,
    required String carId,
    String? addressId,
    String? branchId,
  }) async {
    return await CreateBookingService.createBooking(
        implementationLocation: implementationLocation,
        implementationDate: implementationDate,
        implementationTime: implementationTime,
        serviceId: serviceId,
        carId: carId,
        addressId: addressId,
        branchId: branchId,
        );
  }
}
