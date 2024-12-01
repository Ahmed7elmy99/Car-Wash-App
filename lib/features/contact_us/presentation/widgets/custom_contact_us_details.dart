import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomContactUsDetails extends StatelessWidget {
  const CustomContactUsDetails(
      {super.key,
      required this.icon,
      required this.headerText,
      required this.detailedText});

  final String icon;
  final String headerText;
  final String detailedText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          // width: 30.w,
          // height: 30.h,
          child: Image.asset(
            icon,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(width: 22.w),
        Text(
          "${headerText.tr} \n$detailedText+",
          style: TextStyle(
              color: ColorName.mainBlackColor,
              fontWeight: FontWeight.w400,
              fontSize: 14.sp),
        ),
      ],
    );
  }
}
