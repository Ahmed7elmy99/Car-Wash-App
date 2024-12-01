import 'dart:io';

import 'package:car_wash_mobile_app/core/network/api_result.dart';

import 'package:car_wash_mobile_app/features/sign_up/data/api_service/sign_up_service.dart';
// start: created by helmy
//creat At Date (26/10/2024)
// created : sign up repo

class SignUpRepository {
  /// Performs a login with a mobile number and password, and returns a user model if the
  /// authentication is successful.
  ///
  /// The method calls the [SignInService.signIn] method to perform the actual login.
  ///
  /// Parameters:
  /// - `mobile`: The mobile number to log in with.
  /// - `password`: The password to log in with.
  ///
  /// Returns:
  /// - `Future<ApiResult<UserModel>>`: A `Future` that resolves to an `ApiResult`
  ///   object representing either a successful login with a user model, or a failure
  ///   with an error message.
  static Future<ApiResult<dynamic>> signUpUser({
    required String mobile,
    required String password,
    required String email,
    required String confirmPassword,
    required String name,
    required File image,
  }) async {
    return SignUpService.signUp(
      mobile: mobile,
      password: password,
      email: email,
      confirmPassword: confirmPassword,
      name: name,
      image: image,
    );
  }
}
