import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/user/user_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../../core/network/api_result.dart';

class SignInService {
  static final Dio _dio = DioConfig.getDio();

  /// Performs a sign in with a mobile and password, and returns a user model if the
  /// authentication is successful.
  ///
  /// The method sends a POST request to the [AppStrings.login] endpoint with the
  /// mobile and password as the request body. If the request is successful (200 OK),
  /// the method calls the [parser] function to parse the response data into a
  /// [UserModel].
  ///
  /// The method returns a [Future] that resolves to an [ApiResult] object containing
  /// either a [UserModel] object (success) or an [ApiErrorHandler] (failure).
  ///
  /// Parameters:
  /// - `mobile`: The mobile number to sign in with.
  /// - `password`: The password to sign in with.
  ///
  /// Returns:
  /// - `Future<ApiResult<UserModel>>`: A `Future` that resolves to an `ApiResult`
  ///   object representing either a successful sign in with a user model, or a failure
  ///   with an error message.
  static Future<ApiResult<UserModel>> signIn(
      {required String mobile, required String password}) async {
    final Map<String, dynamic> body = {
      'mobile': mobile,
      'password': password,
    };
    return ApiCallHandler.handleApiCall<UserModel>(
      apiCall: () {
        _dio.options.headers.addAll({
          'Accept-Language': Get.locale!.languageCode,
        });
        return _dio.post(
          AppStrings.login,
          data: body,
        );
      },
      parser: ({required data}) {
        return UserModel.fromJson(data['data']);
      },
    );
  }
}
