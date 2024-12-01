import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/getProfile/get_profile_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';

class ProfileService {
  static final Dio _dio = DioConfig.getDio();

  /// Makes a GET request to [AppStrings.profile] to retrieve the user's profile data.
  ///
  /// Returns a [Future] that resolves to an [ApiResult] of [GetProfileModel].
  /// - The success value contains the [GetProfileModel] object.
  /// - The failure value contains an [ApiErrorHandler] with a description of the error.
  static Future<ApiResult<GetProfileModel>> getProfileData() {
    return ApiCallHandler.handleApiCall<GetProfileModel>(
      apiCall: () {
        return _dio.get(AppStrings.profile);
      },
      parser: ({required data}) {
        return GetProfileModel.fromJson(data['data']);
      },
    );
  }
}
