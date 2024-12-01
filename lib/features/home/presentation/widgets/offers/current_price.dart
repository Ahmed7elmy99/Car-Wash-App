import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_text_styles.dart';

/// created by :Naira Ali [27/10/2024]

class CurrentPrice extends StatelessWidget {
  const CurrentPrice({super.key, required this.currentPrice});

  final String currentPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          currentPrice,
          style: AppTextStyles.darkBlackText10FontW600,
        ),
        SizedBox(width: 3.w),
        Text(
          "rial".tr,
          style: AppTextStyles.darkBlackText10FontW600,
        ),
      ],
    );
  }
}
