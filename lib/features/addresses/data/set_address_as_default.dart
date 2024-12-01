import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';

// Created By : Ghaith
// Create date : 28/10/2024

class SetAddressAsDefaultService {
  static final Dio _dio = DioConfig.getDio();

  /// Deletes an address by its ID from the server and returns the deleted address.
  ///
  /// Sends a POST request to the server with the address ID as a path parameter.
  /// The request is authenticated using a Bearer token.
  ///
  /// Returns a [ApiResult] object containing the deleted [AddressModel].
  ///
  /// On success, the [ApiResult.success] property contains the deleted address.
  /// On failure, the [ApiResult.failure] property contains an error message.
  ///
  /// Parameters:
  /// - `id`: The ID of the address to be deleted.
  static Future<ApiResult<AddressModel>> setAddressAsDefault(
      {required int id}) async {
    return ApiCallHandler.handleApiCall(
      apiCall: () => _dio.post(
        "${AppStrings.setAddressAsDefault}/$id",
        options: Options(headers: {
          // Edited by: Nadeen Mohamed
          // Edited at date: 24/11/2024
          // Edite note: comment the bearer token
          // 'Authorization':
          //     'Bearer 5|STsWnBjCRadhX1unKrVZlgASICCQoMqpYnt7Yhxzcebac435',
        }),
      ),
      parser: ({required data}) {
        return AddressModel.fromJson(data['data']);
      },
    );
  }
}
