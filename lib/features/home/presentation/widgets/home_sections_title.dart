import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSectionsTitle extends StatelessWidget {
  const HomeSectionsTitle({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppTextStyles.kGray15FontW700,
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
