import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../gen/colors.gen.dart';
import '../../../../../gen/fonts.gen.dart';

/// created by :Naira Ali [27/10/2024]

class OldPrice extends StatelessWidget {
  const OldPrice({super.key, required this.oldPrice});

  final String oldPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          oldPrice,
          style: TextStyle(
              color: ColorName.mainGrayColor, //141815
              fontFamily: FontFamily.almarai,
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.lineThrough,
              decorationThickness: 2.0,
              decorationColor: ColorName.mainGrayColor),
        ),
        SizedBox(width: 3.w),
        Text(
          "rial".tr,
          style: TextStyle(
              color: ColorName.mainGrayColor, //141815
              fontFamily: FontFamily.almarai,
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.lineThrough,
              decorationThickness: 2.0,
              decorationColor: ColorName.mainGrayColor),
        ),
      ],
    );
  }
}
