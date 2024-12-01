import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'custom_calling_button.dart';

class ServiceProviderInfo extends StatelessWidget {
  const ServiceProviderInfo(
      {super.key,
      required this.providerName,
      required this.providerPhone,
      required this.providerImage});

  final String providerName;
  final String providerPhone;
  final String providerImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsetsDirectional.only(
            top: 23.23.h, start: 21.46.w, end: 34.28.w, bottom: 23.29.h),
        child: Row(
          children: [
            Container(
              width: 45.62.w,
              height: 45.62.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(providerImage), fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 18.w),
            Text(
              providerName.tr,
              style: TextStyle(
                  color: ColorName.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp),
            ),
            const Spacer(),
            CustomCallingButton(phoneNumber: providerPhone)
          ],
        ));
  }
}
