import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PlanPrice extends StatelessWidget {
  const PlanPrice({super.key, required this.price, required this.time});
  final String price;
  final String time;

  @override
  Widget build(BuildContext context) {
    return          Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.sp),
      child: RichText(
        text:  TextSpan(
          children: [
            TextSpan(
              text:
              "${double.parse(price).floor()}/", // Displays price with currency
              style: AppTextStyles.black12FontPoppinsW700,
            ),
            TextSpan(
              text:
              "${"rial".tr}.${Helpers.convertTimeToPeriod(int.parse(time))}",
              style: AppTextStyles.blackText16FontW700,
            ),
          ],
        ),
      ),
    );
  }
}
