import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/service_details/service_details_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';

// start: created by helmy
//creat At Date (30/10/2024)
// created : service details service for calling the api
class ServiceDetailsService {
  static final Dio _dio = DioConfig.getDio();
  static Future<ApiResult<List<ServiceDetailsModel>>>
      getServiceDetails() async {
    print("data");

    return ApiCallHandler.handleApiCall<List<ServiceDetailsModel>>(
      apiCall: () {
        return _dio.get(AppStrings.serviceDetails);
      },
      parser: ({required data}) {
        return (data['data'] as List<dynamic>)
            .map((serviceDetails) =>
                ServiceDetailsModel.fromJson(serviceDetails))
            .toList();
      },
    );
  }
}
