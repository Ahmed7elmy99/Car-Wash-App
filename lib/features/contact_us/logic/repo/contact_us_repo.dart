import 'dart:developer';

import 'package:car_wash_mobile_app/core/models/contact_us/contact_us_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/contact_us/data/api_services/contact_us_services.dart';

class ContactUsRepo {
  static Future<ApiResult<ContactUsModel>> sendMessage({
    required dynamic fullName,
    required dynamic email,
    required dynamic mobile,
    required dynamic message,
  }) async {
    final contactUsMessage = await ContactUsApiServices.sendMessage(
        fullName: fullName, email: email, mobile: mobile, message: message);
    log("$contactUsMessage");
    return contactUsMessage;
  }
}
