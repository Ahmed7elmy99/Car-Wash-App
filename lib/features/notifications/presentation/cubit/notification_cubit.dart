import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:car_wash_mobile_app/core/models/notification/notification_model.dart';
import 'package:car_wash_mobile_app/features/notifications/logic/repo/notification_repo.dart';

import '../../data/firebase_service/local_notification_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/network/api_error_handler.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_state.dart';
part 'notification_cubit.freezed.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit() : super(const NotificationState.initial());

  int page = 1;

  static const LoadingNotification loading = LoadingNotification();
  static const LoadingNotificationOne loadingOne = LoadingNotificationOne();

  List<NotificationModel> messageList = [];
  NotificationModel? message;
  late Errornotification error;

  Future<void> init() async {
    LocalNotificationService.streamMessages.stream
        .listen((RemoteMessage? onData) => getFireBaseMessage(onData));
    LocalNotificationService.streamPressedMessage.stream
        .listen((onData) => getFireBasePressedMessage(onData));
    await getNotificationpage();
  }

  Future<void> getFireBaseMessage(RemoteMessage? res) async {
    if (res == null) {
      return;
    }
    if (messageList.isEmpty) {
      getNotificationpage();
    }
    final recMessage = NotificationModel.fromRemote(res);
    recivedMessage(recMessage);
  }

  void recivedMessage(NotificationModel recMessage) {
    if (message != null && message == recMessage) {
      emit(pressedNotification(message!));
    } else {
      message = recMessage;
      messageList = [message!, ...messageList];
      log("messages lenght${messageList.length}");
      emit(Successnotifications(messageList));
    }
  }

  Future<void> getFireBasePressedMessage(NotificationResponse? res) async {
    if (res == null) {
      return;
    }
    if (messageList.isEmpty) {
      getNotificationpage();
    }
    NotificationModel mes = NotificationModel.fromRemote(
        RemoteMessage.fromMap(jsonDecode((res.payload ?? ""))));
    recivedMessage(mes);
  }

  Future<void> getNotificationpage() async {
    log(page.toString());
    emit(page == 1 ? loading : loadingOne);
    final data = await NotificationRepo.getNotificationPage(page: page);
    data.when(
      success: (data) {
        messageList.addAll(data as List<NotificationModel>);
        page++;
        emit(Successnotifications(messageList));
      },
      failure: (data) => emit(Errornotification(data)),
    );
  }

  Future<void> refresh() async {
    page = 1;
    messageList.clear();
    message == null;
    emit(pressedNotification(message));
    await getNotificationpage();
  }

  // void end() {
  //   page = 1;
  //   messageList.clear();
  // }
}
