import 'package:car_wash_mobile_app/core/models/user/user_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/sign_in/data/api_services/sign_in_service.dart';

class SignInRepository {
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
  static Future<ApiResult<UserModel>> loginUser(
      {required String mobile, required String password}) async {
    return await SignInService.signIn(mobile: mobile, password: password);
  }
}
