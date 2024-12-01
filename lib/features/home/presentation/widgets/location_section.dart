import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../gen/colors.gen.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            SizedBox(
              width: 12.w,
              height: 10.h,
              child: SvgPicture.asset(
                Assets.images.homeArrowDownIcon.path,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 9.w),
            Text(
              "location".tr,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorName.grey),
            ),
            SizedBox(width: 6.w),
            SizedBox(
              width: 12.w,
              height: 18.h,
              child: SvgPicture.asset(
                Assets.images.homeLocationIcon.path,
                fit: BoxFit.fill,
              ),
              // Edited by: nadeen mohamed
              // Edited at date: 9/11/2024
              // Edite note: Add bracket ) at the end of sizedbox
              ),
            /**
             * edited by Naira Ali [11/10/2024]
             * deleted duplicated location icon section
             */
            ],
          ),
        ));
  }
}