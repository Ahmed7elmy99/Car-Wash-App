import 'package:car_wash_mobile_app/core/models/booking/detailed_booking_data.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/reservation/api_services/reservation_api_services.dart';

///Created by amr elnbawy 23/10/2024
class ReservationRepo {
  ReservationApiServices apiServices;
  ReservationRepo(this.apiServices);

  _simpleParser({required data}) => List.castFrom(data["data"])
      .map((e) => DetailedBookingData.fromJson(e))
      .toList();

  Future<ApiResult> getReservations() async =>
      await apiServices.getReservations(parser: _simpleParser);

  Future<ApiResult> cancelReservation(int id) async =>
      await apiServices.cancelReservation(id);

  Future<ApiResult> confirmReservation(int id) async =>
      await apiServices.confirmReservation(id);
}
