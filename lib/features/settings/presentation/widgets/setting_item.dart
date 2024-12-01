import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_text_styles.dart';

class SettingItem extends StatelessWidget {
  const SettingItem(
      {super.key,
      required this.text,
      this.widget,
      required this.isArrow,
      this.onTap});

  final String text;
  final bool isArrow;
  final VoidCallback? onTap;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.w, 21.h, 0.w, 0.h),
      child: isArrow
          ? InkWell(
              onTap: onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text.tr,
                    style: AppTextStyles.kGray15FontW400,
                  ),
                  if (isArrow)
                    IconButton(
                        onPressed: onTap,
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: ColorName.grey.withOpacity(0.5),
                          size: 15.sp,
                        )),
                  if (!isArrow) widget!,
                ],
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text.tr,
                  style: AppTextStyles.kGray15FontW400,
                ),
                if (isArrow)
                  Icon(
                    Icons.arrow_forward_ios,
                    color: ColorName.grey.withOpacity(0.5),
                    size: 15.sp,
                  ),
                if (!isArrow) widget!,
              ],
            ),
    );
  }
}
