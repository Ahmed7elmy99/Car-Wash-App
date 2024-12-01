
import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';

///Created by amr elnbawy 23/10/2024
class ReservationApiServices {
  final Dio _dio = DioConfig.getDio();
  ReservationApiServices();

  Future<ApiResult> getReservations(
          {required Function({required dynamic data}) parser}) async =>
      await ApiCallHandler.handleApiCall(
          apiCall: () => _dio.get(AppStrings.userBookings), parser: parser);

  Future<ApiResult> confirmReservation(int id) async =>
      await ApiCallHandler.handleApiCall(
          apiCall: () => _dio.get("${AppStrings.confirmBookings}/$id"),
          parser: ({required data}) => data);

  Future<ApiResult> cancelReservation(int id) async =>
      await ApiCallHandler.handleApiCall(
          apiCall: () => _dio.post("${AppStrings.cancelBookings}/$id"),
          parser: ({required data}) => data);
}
