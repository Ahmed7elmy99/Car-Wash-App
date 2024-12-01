import 'package:car_wash_mobile_app/features/notifications/data/api_services/notification_api_services.dart';

import '../../../../core/models/notification/notification_model.dart';
import '../../../../core/network/api_result.dart';

class NotificationRepo {
  static _paresenotification({data}) {
    return List.castFrom(data["data"])
        .map((e) => NotificationModel.fromJson(e))
        .toList();
  }

  static Future<ApiResult> getNotificationPage({int page = 1}) =>
      NotificationApiServices.getNotificationPage(
          page: page, parser: _paresenotification);
}