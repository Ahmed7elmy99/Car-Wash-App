import 'dart:io';

import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/user/user_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:get/utils.dart';

import '../../../../core/network/api_result.dart';
// start: created by helmy
//creat At Date (26/10/2024)
// created : sign up service for calling the api

class SignUpService {
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
  /* static Future<ApiResult<UserModel>> signUp(
      {required String mobile, required String password,required String email,required String confirmPassword,required String name,required File image,}) async {
        
    final Map<String, dynamic> body = {
      'mobile': mobile,
      'password': password,
      'email': email,
      'password_confirmation': confirmPassword,
      'name': name,
      'profile_photo_path': image
      
    };
    return ApiCallHandler.handleApiCall(
      apiCall: () {
        return _dio.post(
          AppStrings.signUp,
          data: body,
        );
      },
      parser: ({required data}) {
        return UserModel.fromJson(data);
      },
    );
  }*/
  static Future<ApiResult<dynamic>> signUp({
    required String mobile,
    required String password,
    required String email,
    required String confirmPassword,
    required String name,
    required File image,
  }) async {
    // Convert file to MultipartFile
    final file = await MultipartFile.fromFile(image.path,
        filename: image.path.split('/').last);

    // Prepare FormData
    final formData = FormData.fromMap({
      'mobile': mobile,
      'password': password,
      'email': email,
      'password_confirmation': confirmPassword,
      'name': name,
      'profile_photo_path': file,
    });

    return ApiCallHandler.handleApiCall(
        apiCall: () {
          _dio.options.headers['Accept-Language'] = Get.locale?.languageCode;
          return _dio.post(
            AppStrings.signUp,
            data: formData,
          );
        },
        parser: ({required data}) {});
  }
}
