import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EditButton extends StatelessWidget {
  const EditButton({
    super.key,
    required this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsetsDirectional.only(end: 7.w),
        padding: EdgeInsetsDirectional.symmetric(
          vertical: 5.h,
          horizontal: 18.w,
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(9.r)),
        child: Center(
          child: Text(
            "edit".tr,
            style: AppTextStyles.blackText12FontW700,
          ),
        ),
      ),
    );
  }
}
