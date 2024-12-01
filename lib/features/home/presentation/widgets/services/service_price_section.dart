import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_text_styles.dart';

/// creted by Naira Ali
/// [27/10/2024]

class ServicePriceSection extends StatelessWidget {
  const ServicePriceSection({super.key, required this.price});

  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /**
         * edited image size
         * edited by : naira ali[20/10/2024]
         */
        SizedBox(
          width: 14.w,
          height: 30.h,
          child: SvgPicture.asset(
            // Edited by: Nadeen Mohamed
            // Edited at date: 7/11/2024
            // Edit note: use the correct path of svg image
            Assets.images.homePriceIcon.path,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(width: 4.w),
        Text(
          "rial".tr,
          style: AppTextStyles.kBlack14FontW400,
        ),
        SizedBox(width: 4.w),
        Text(
          price,
          style: AppTextStyles.kBlack14FontW400,
        ),
        Text(
          "/hour".tr,
          style: AppTextStyles.kBlack14FontW400,
        ),
      ],
    );
  }
}