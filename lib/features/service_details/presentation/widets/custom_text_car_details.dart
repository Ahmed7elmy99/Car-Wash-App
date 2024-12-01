import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// start: created by helmy
//Edit At Date (19/10/2024)
class CustomTextCarDetails extends StatelessWidget {
  const CustomTextCarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 28.w), // Unchanged
      child: Align(
        alignment: Alignment.topRight, // Unchanged
        child: Text('car_details'.tr, // Unchanged
            style: AppTextStyles.kBlack15FontW700),
      ),
    );
  }
}
