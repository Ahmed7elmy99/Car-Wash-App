import 'dart:developer';

import 'package:car_wash_mobile_app/core/models/logout/logout_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/settings/data/api_services/logout_services.dart';

class LogoutRepo {
  static Future<ApiResult<LogoutModel>> logout() async {
    final logoutUser = await LogoutApiServices.logOut();
    log("$logoutUser");
    return logoutUser;
  }
}
