import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanOfferName extends StatelessWidget {
  const PlanOfferName({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        top: 10.sp,
        start: 27.sp,
      ),
      child: Text(
        name,
        style: AppTextStyles.kBlack15FontW700,
      ),
    );
  }
}
