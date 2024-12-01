import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key, required this.price});
  final String price;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: price,
            style: AppTextStyles.kBlack20PoppinsFontW700.copyWith(
              // Edited by: Nadeen Mohamed
              // Edited at date: 20/10/2024
              // Edit note: use fontSize variable
              fontSize: 12.sp,
            ),
          ),
          TextSpan(
            text: '/',
            style: AppTextStyles.kBlack20FontW700.copyWith(fontSize: 12),
          ),
          // Edited by: nadeen mohamed
          // Edited at date: 15/10/2024
          // Change the text
          TextSpan(
            text: 'sar.hour'.tr, // use translation by nadeen (13/10/2024)
            style: AppTextStyles.kBlack14FontW700.copyWith(
              fontSize: 10.sp,
            ),
          ),
        ],
      ),
    );
  }
}
