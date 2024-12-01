import 'dart:developer';

import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';

import '../../../../core/models/notification/notification_model.dart';
import '../cubit/notification_cubit.dart';
import 'notification_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationListWidget extends StatefulWidget {
  const NotificationListWidget({super.key});

  @override
  State<NotificationListWidget> createState() => _NotificationListWidgetState();
}

class _NotificationListWidgetState extends State<NotificationListWidget> {
  late List<NotificationModel> data = cubit.messageList;
  NotificationModel? message;
  late final NotificationCubit cubit =
      BlocProvider.of<NotificationCubit>(context);
  late ScrollController _controller;
  bool loading = false;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
    init();
  }

  Future<void> init() async {
    if (cubit.messageList.isEmpty) {
      cubit.getNotificationpage();
    }
    log("Added Listener");
    _controller.addListener(onScroll);
  }

  @override
  void dispose() {
    _controller.dispose();
    // cubit.end();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationCubit, NotificationState>(
      builder: (context, state) {
        if (state is LoadingNotification) {
          return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, i) => Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 14.sp, vertical: 15.sp),
                    child: const NotificationItem(),
                  ));
        } else if (state is Errornotification) {
          state.error.showError(context);
          return Center(child: Text(state.error.statusMessage));
        } else if (state is Successnotifications) {
          loading = false;
        } else if (state is pressedNotification) {
          message = state.message;
        } else if (state is LoadingNotificationOne) {
          loading = true;
        }
        if (data.isEmpty) {
          return Center(
              child: Text(
            "no_notification",
            style: AppTextStyles.kWhite20FontW700,
          ));
        }
        return RefreshIndicator(
          onRefresh: () async => await cubit.refresh(),
          child: ListView.builder(
            controller: _controller,
            itemCount: loading ? data.length + 1 : data.length,
            itemBuilder: (context, i) {
              if (data.isEmpty || i == data.length) {
                log("loading");
                return Padding(
                  padding: EdgeInsets.all(8.0.sp),
                  child: const Center(child: CircularProgressIndicator()),
                );
              }
              final item = data[i];
              return Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 14.sp, vertical: 15.sp),
                child: NotificationItem(
                  model: item,
                  pressed: (message != null && item.id == message?.id),
                ),
              );
            },
          ),
        );
      },
    );
  }

  void onScroll() async {
    // log(_controller.position.pixels.toString());
    if ((_controller.position.pixels >=
            (_controller.position.maxScrollExtent)) &&
        !loading) {
      await cubit.getNotificationpage();
    }
  }
}
