import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';

// Created By : Ghaith
// Create date : 28/10/2024
class AddNewAddressService {
  static final Dio _dio = DioConfig.getDio();
  static Future<ApiResult<AddressModel>> addNewAddress({
    required String nameAddress,
    required String region,
    required String city,
    required String street,
    required String neighborhood,
  }) async {
    return ApiCallHandler.handleApiCall(
      apiCall: () => _dio.post(AppStrings.addreess,
          options: Options(headers: {
            // Edited by: Nadeen Mohamed
            // Edited at date: 24/11/2024
            // Edite note: comment the bearer token
            // 'Authorization':
            //     'Bearer 5|STsWnBjCRadhX1unKrVZlgASICCQoMqpYnt7Yhxzcebac435',
          }),
          data: {
            "city": city,
            "region": region,
            "street": street,
            "neighborhood": neighborhood,
            'is_default': '1',
            "name_address": nameAddress,
            "latitude": "32",
            "longitude": "23",
          }),
      parser: ({required data}) {
        return AddressModel.fromJson(data['data']);
      },
    );
  }
}
