import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// start: created by helmy
//Edit At Date (19/10/2024)
class TitleAndHeadTitleSignUp extends StatelessWidget {
  const TitleAndHeadTitleSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Create a new account'.tr, style: AppTextStyles.kBlack20FontW700),
        SizedBox(height: 14.h),
        // Changed text to be translatable
        Text('Please complete your information to start the app'.tr,
            style: AppTextStyles.kBlack12FontW400),
      ],
    );
  }
}
