import 'dart:async';
import 'dart:convert';
import 'dart:developer';


import '../../../../core/constants/local_notification_constants.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // Init the plugin.
  static Future init() async {
    InitializationSettings settings = const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );

    flutterLocalNotificationsPlugin.initialize(
      settings,
      onDidReceiveNotificationResponse: onTap,
      onDidReceiveBackgroundNotificationResponse: onTap,
    );
  }

  // Show notification from FCM.
  static Future<void> showNotificationFromFCM(RemoteMessage message) async {
    const AndroidNotificationDetails android = AndroidNotificationDetails(
      LocalNotificationConstants.channelId_2,
      LocalNotificationConstants.channelName_2,
      importance: Importance.max,
      priority: Priority.max,
      autoCancel: false,
      sound: RawResourceAndroidNotificationSound('notification_sound'),
    );

    const DarwinNotificationDetails ios = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
      interruptionLevel: InterruptionLevel.active,
    );

    NotificationDetails details = const NotificationDetails(
      android: android,
      iOS: ios,
    );

    streamMessages.add(message);

    await flutterLocalNotificationsPlugin.show(
      LocalNotificationConstants.notificationId_2,
      message.notification?.title,
      message.notification?.body,
      details,
      payload: jsonEncode(message.toMap()),
    );
  }

  static Future<void> cancelNotification(int id) async {
    await flutterLocalNotificationsPlugin.cancel(id);
  }

  static final StreamController<RemoteMessage?> streamMessages =
      StreamController<RemoteMessage?>.broadcast();

  static final StreamController<NotificationResponse?> streamPressedMessage =
      StreamController<NotificationResponse?>.broadcast();

  static void onTap(NotificationResponse notificationResponse) {
    log("notification response id ${notificationResponse.id}");
    streamPressedMessage.add(notificationResponse);
    LocalNotificationService.cancelNotification(notificationResponse.id ?? 0);
  }



}

