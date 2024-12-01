import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';

// Created By : Ghaith
// Create date : 28/10/2024

class AddressService {
  static final Dio _dio = DioConfig.getDio();

  /// Retrieves a list of addresses from the server.
  ///
  /// This method sends a GET request to the server to fetch the list of address data.
  /// The request includes an authorization header with a bearer token for authentication.
  ///
  /// The server response is parsed, and each JSON object in the response data is mapped
  /// to an [AddressModel] object.
  ///
  /// Returns a [Future] that resolves to an [ApiResult] containing a list of [AddressModel]s.
  /// On success, the [ApiResult.success] property contains the list of addresses.
  /// On failure, the [ApiResult.failure] property contains an error message.
  static Future<ApiResult<List<AddressModel>>> getAddresses() async {
    return ApiCallHandler.handleApiCall<List<AddressModel>>(
      apiCall: () {
        return _dio.get(
          AppStrings.addreess,
          options: Options(headers: {
            // Edited by: Nadeen Mohamed
            // Edited at date: 24/11/2024
            // Edite note: comment the bearer token
            // 'Authorization':
            //     'Bearer 5|STsWnBjCRadhX1unKrVZlgASICCQoMqpYnt7Yhxzcebac435',
          }),
        );
      },
      parser: ({required data}) {
        // Parse the list of addresses and map each JSON object to an AddressModel
        return (data['data'] as List)
            .map((json) => AddressModel.fromJson(json))
            .toList();
      },
    );
  }
}
