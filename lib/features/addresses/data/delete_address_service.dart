import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';

// Created By : Ghaith
// Create date : 28/10/2024

class DeleteAddressService {
  static final Dio _dio = DioConfig.getDio();

  /// Deletes an address by its ID from the server and returns the deleted address.
  ///
  /// The method sends a POST request to the server with the address ID as a path parameter.
  /// The request is authenticated with the provided token.
  ///
  /// The method returns a [ApiResult] object containing the deleted [AddressModel].
  ///
  /// If the request is successful, the [ApiResult] object contains the deleted address in the
  /// [ApiResult.success] property. If the request fails, the [ApiResult] object contains an error
  /// message in the [ApiResult.failure] property.
  ///
  /// Parameters:
  /// - `id`: The ID of the address to be deleted.
  static Future<ApiResult> delteAddress({required int id}) async {
    return ApiCallHandler.handleApiCall(
      apiCall: () => _dio.post(
        "${AppStrings.deleteAddress}/$id",
      ),
      parser: ({required data}) {},
    );
  }
}
