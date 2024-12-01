import 'dart:developer';

import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/models/notification/notification_model.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// [NotificationItem] Widget
///
/// Created by: Amr Elnbawy
/// Edited by: Amr Elnbawy
/// Added Border Radius
/// Created at Date: 14-oct-2024
class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    this.model,
    this.pressed = false,
  });
  final NotificationModel? model;
  final bool? pressed;
  @override
  Widget build(BuildContext context) {
    if (pressed == true) log("pressed true ");
    return model == null
        ? const _NotificationModelShimeer()
        : _NotificationModelITem(pressed: pressed, model: model!);
  }
}

class _NotificationModelITem extends StatelessWidget {
  const _NotificationModelITem({
    required this.pressed,
    required this.model,
  });

  final bool? pressed;
  final NotificationModel model;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      // margin: EdgeInsetsDirectional.all(13.sp),
      decoration: BoxDecoration(
          color: pressed ?? true ? ColorName.lightgreen : null,
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(
            width: 1.sp,
            color: ColorName.grey.withOpacity(.10),
          )),
      // padding: EdgeInsetsDirectional.all(15.sp),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 10.0.sp, top: 16.sp),
            child: Assets.images.logo.image(width: 32.sp, height: 32.sp),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                top: 37.sp,
                start: 8.sp,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.title,
                    style: AppTextStyles.kBlack210AlmaraiW400Opacity60,
                  ),
                  SizedBox(
                    height: 9.sp,
                  ),
                  Text(
                    textDirection: TextDirection.ltr,
                    model.date,
                    style: AppTextStyles.klightslategray10interW400,
                  ),
                  SizedBox(
                    height: 16.sp,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NotificationModelShimeer extends StatelessWidget {
  const _NotificationModelShimeer();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          width: 1.sp,
          color: ColorName.grey.withOpacity(.10),
        ),
      ),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(start: 10.0.sp, top: 16.sp),
              child: Assets.images.logo.image(width: 32.sp, height: 32.sp),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  top: 37.sp,
                  start: 8.sp,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: AppScreenUtils.w * (1 / 3),
                      height: 5.h,
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(
                      height: 9.sp,
                    ),
                    Container(
                      width: AppScreenUtils.w * (1 / 6),
                      height: 5.h,
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(
                      height: 16.sp,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
