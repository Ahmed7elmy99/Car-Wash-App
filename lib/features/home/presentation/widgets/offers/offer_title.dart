import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_text_styles.dart';

/// created by :Naira Ali [27/10/2024]

class OfferTitle extends StatelessWidget {
  const OfferTitle(
      {super.key, required this.offerTitle, required this.offerPercent});

  final String offerTitle;
  final String offerPercent;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          offerTitle,
          style: AppTextStyles.blackText12FontW700,
        ),
        SizedBox(width: 3.w),
        Text(
          "$offerPercent%",
          style: AppTextStyles.greenText14FontW700,
        ),
      ],
    );
  }
}
