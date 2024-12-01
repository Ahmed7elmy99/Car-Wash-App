import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/widgets/custom_back_button.dart';
import '../widgets/notification_item.dart';
import '../widgets/notification_list_widget.dart';

/// Screen that displays a list of [NotificationItem]
///
/// Created by: Amr Elnbawy
/// Edited by: Amr Elnbawy
/// Created at Date: 14-oct-2024
/// The [NotificationScreen] displays a list of [NotificationItem]. Users can filter
class NotificationScreen extends StatelessWidget {
  ///Notification
  static const String id = "/Notification";
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const CustomBackButton()),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 10.sp,
              start: 27.sp,
            ),
            child:
                Text("notifications".tr, style: AppTextStyles.kBlack15FontW700),
          ),
          SizedBox(height: 13.sp),
          const Expanded(
            child: NotificationListWidget(),
          )
        ],
      )),
    );
  }
}
