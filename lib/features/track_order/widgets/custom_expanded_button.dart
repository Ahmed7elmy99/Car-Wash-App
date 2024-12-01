import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomExpandedButton extends StatelessWidget {
  const CustomExpandedButton(
      {super.key, required this.text, required this.onTap});

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: InkWell(
      onTap: onTap,
      child: Container(
        height: 51.h,
        decoration: BoxDecoration(
          color: ColorName.green,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 12.w,
              height: 16.h,
              child: SvgPicture.asset(
                Assets.images.rightArrowDashed.path,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 5.5.w),
            Text(
              text,
              style: TextStyle(
                  color: ColorName.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    ));
  }
}
