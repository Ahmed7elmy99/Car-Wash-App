part of 'notification_cubit.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _Initial;
  const factory NotificationState.load() = LoadingNotification;
  const factory NotificationState.loadone() = LoadingNotificationOne;

  const factory NotificationState.success(List<NotificationModel> modelList) =
      Successnotifications;
  const factory NotificationState.failure(ApiErrorHandler error) =
      Errornotification;
  const factory NotificationState.pressed(NotificationModel? message) =
      pressedNotification;
}
