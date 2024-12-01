import 'dart:developer';

import 'package:car_wash_mobile_app/features/notifications/data/firebase_service/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'local_notification_service.dart';

class FireBaseApi {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static FirebaseCrashlytics crashlytics = FirebaseCrashlytics.instance;

  static Future<void> initNotifications() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    await messaging.requestPermission(
      sound: true,
      alert: true,
      badge: true,
    );

    await messaging.subscribeToTopic("all");
    FlutterError.onError = crashlytics.recordFlutterFatalError;
    final fcmToken = await messaging.getToken();
    log("token : $fcmToken");
    LocalNotificationService.init();
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    FirebaseMessaging.onMessage
        .listen((mes) => firebaseMessagingBackgroundHandler(mes));
  }

  /// Edited by Naira Ali [11/10/2024]
  /// edited firebaseMessagingBackgroundHandler function
  /// to handel the delay that occur while pressing on the notification switch button
  static Future<void> firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    if (pref.getBool('notificationsEnabled') ?? true) {
      await messaging.subscribeToTopic("all");
      log("Subscribed to notifications");
      LocalNotificationService.showNotificationFromFCM(message);

    }
    else {
      await messaging.unsubscribeFromTopic("all");
      log("Unsubscribed from notifications");
      await LocalNotificationService.flutterLocalNotificationsPlugin
          .cancelAll();
      log("Cleared all local notifications");
    }
  }

  // Enable or disable notifications
  static Future<void> setNotificationsEnabled(bool isEnabled) async {
    if (isEnabled) {
      await messaging.subscribeToTopic("all");
      log("Subscribed to notifications");
    } else {
      await messaging.unsubscribeFromTopic("all");
      log("Unsubscribed from notifications");
      await LocalNotificationService.flutterLocalNotificationsPlugin
          .cancelAll();
      log("Cleared all local notifications");
    }
  }
}
