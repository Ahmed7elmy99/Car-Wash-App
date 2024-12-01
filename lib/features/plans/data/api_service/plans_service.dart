import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/all_plans/all_plans_model.dart';
import 'package:car_wash_mobile_app/core/models/my_plans/user_plans_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';

class PlansService {
  static final _dio = DioConfig.getDio();

  /// Fetches the user's plans from the API.
  ///
  /// This method makes a GET request to the API to retrieve the user's plans.
  /// The response is then parsed into a [UserPlansModel].
  ///
  /// Returns a [Future] that resolves to an [ApiResult] of [UserPlansModel].
  /// - The success value contains the [UserPlansModel] object.
  /// - The failure value contains an [ApiErrorHandler] with a description of the error.
  static Future<ApiResult<List<UserPlansModel>>> getMyPlans() {
    return ApiCallHandler.handleApiCall(
      apiCall: () => _dio.get(AppStrings.myPlans),
      parser: ({required data}) {
        return data['data']
            .map<UserPlansModel>((data) => UserPlansModel.fromJson(data))
            .toList();
      },
    );
  }

  /// Renews a plan with the given ID by making a POST request to the API.
  ///
  /// This method sends a request to renew a specific plan identified by the
  /// provided [id]. The API endpoint is constructed using the plan ID.
  ///
  /// Returns a [Future] that resolves to an [ApiResult] which indicates the
  /// success or failure of the API call.
  /// - Parameter [id]: The unique identifier of the plan to be renewed.
  ///
  static Future<ApiResult<dynamic>> renewMyPlan({required int id}) {
    return ApiCallHandler.handleApiCallWithoutParser(
      apiCall: () => _dio.post(
        '${AppStrings.plans}${AppStrings.renew}/$id',
        data: {'id': id},
      ),
    );
  }

  static Future<ApiResult<List<AllPlansModel>>> getAllPlansService() {
    return ApiCallHandler.handleApiCall(apiCall: () {
      return _dio.get(AppStrings.plans);
    }, parser: ({required data}) {
      if (data == null || data['data'] == null) {
        return [];
      }
      List allPlansData = data['data'];
      return allPlansData
          .map((allPlansJson) => AllPlansModel.fromJson(allPlansJson))
          .toList();
    });
  }
  
}
