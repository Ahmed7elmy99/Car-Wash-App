import 'dart:developer';
import 'dart:io';

import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/getProfile/get_profile_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';

class EditProfileService {
  static final Dio _dio = DioConfig.getDio();

  /// Updates the user's profile information.
  ///
  /// This method sends a `POST` request to update the profile with the provided
  /// information. It includes fields such as name, email, mobile, password, and an
  /// optional profile image. Only non-null and non-empty fields are added to the request.
  ///
  /// Returns an [ApiResult] containing a [GetProfileModel] on success or an error message on failure.
  ///
  /// Parameters:
  /// - [name]: The user's name (optional).
  /// - [email]: The user's email address (optional).
  /// - [mobile]: The user's mobile number (optional).
  /// - [password]: The user's password (optional). Password confirmation is automatically handled.
  /// - [imageFile]: A [File] containing the user's profile image (optional).
  static Future<ApiResult<GetProfileModel>> updateProfile({
    String? name,
    String? email,
    String? mobile,
    String? password,
    File? imageFile,
  }) async {
    FormData formData = FormData();

    // Add fields to formData only if they are not null
    if (email != null && email.isNotEmpty) {
      formData.fields.add(MapEntry('email', email));
    }
    if (mobile != null && mobile.isNotEmpty) {
      formData.fields.add(MapEntry('mobile', mobile));
    }
    if (name != null && name.isNotEmpty) {
      formData.fields.add(MapEntry('name', name));
    }
    if (password != null && password.isNotEmpty) {
      formData.fields.add(MapEntry('password', password));
      formData.fields.add(MapEntry('password_confirmation', password));
    }
    if (imageFile != null) {
      log("it is not null");
      formData.files.add(
        MapEntry(
          'profile_photo_path',
          await MultipartFile.fromFile(
            imageFile.path,
            filename: imageFile.path.split('/').last,
          ),
        ),
      );
    }

    // Make the API call to update the profile
    return ApiCallHandler.handleApiCall<GetProfileModel>(
      apiCall: () {
        return _dio.post(AppStrings.updateProfile, data: formData);
      },
      parser: ({required data}) => GetProfileModel.fromJson(data['data']),
    );
  }
}
