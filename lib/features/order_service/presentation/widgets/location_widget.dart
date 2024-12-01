import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
//Edited by: Nadeen Mohamed
// Edited at date: 31/10/2024
// Edit Note: remove unused import of get

// Seperate location widget by nadeen (13/10/2024)
// Edited by nadeen
// Edited at : 15/10/2024
// This file contains the container of location widget
class LocationWidget extends StatelessWidget {
  const LocationWidget({
    super.key,
    required this.city,
    required this.neighborhood,
    required this.street,
  });
  final String city;
  final String street;
  final String neighborhood;

  @override
  Widget build(BuildContext context) {
    // Edited by: Nadeen
    // Edited at: 15/10/2024
    // Remove padding
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
          // Edited by : nadeen mohamed
          // Edited at date: 17/10/2024
          // Edit note: add r to the borderRadius
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: ColorName.black2.withOpacity(0.05))),
      child: Row(
        children: [
          SizedBox(
            width: 12.w,
          ),
          // Edited by: Nadeen mohamed
          // Edited at date: 17/10/2024
          // Edit note: put width and height to the image
          SvgPicture.asset(
            Assets.images.location.path,
            width: 24.w,
            height: 24.h,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            // Edited by: Nadeen Mohamed
            // Edited at date: 31/10/2024
            // Edit note: display neighborhood,street,city
            ('$neighborhood,$street,$city'),
            style: AppTextStyles.kBlack12FontW400,
          )
        ],
      ),
    );
  }
}
