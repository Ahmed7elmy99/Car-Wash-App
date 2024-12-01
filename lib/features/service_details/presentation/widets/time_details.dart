import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:intl/intl.dart';

// start: edited by helmy
//Edit At Date (21/10/2024)
//fix all colors and text styles
class TimeDetails extends StatelessWidget {
  const TimeDetails({
    super.key,
    // Created by: Nadeen Mohamed
    // Created at date: 3/11/2024
    // Create variables for period,time,selectedDate and use it in the constructor
    required this.period,
    required this.time,
    required this.selectedDate,
  });
  final String period;
  final String time;
  final String selectedDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      //commented height by helmy (19/10/2024)
      // height: 56.h,
      width: 335.w,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
      decoration: BoxDecoration(
        color: ColorName.mintGreenColor.withOpacity(0.10),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            // Edited by: Nadeen Mohamed
            // Edited at date: 3/11/2024
            // Edit note: use selectedDate variable
            selectedDate,
            style: AppTextStyles.black15InterFontInterW600,
            textDirection: TextDirection.ltr,
          ),
          Text(
            // Edited by: Nadeen Mohamed
            // Edited at date: 3/11/2024
            // Edit note: use time and period variables
            '$time $period',
            style: AppTextStyles.black12InterFontInterW400,
            textDirection: TextDirection.ltr,
          ),
        ],
      ),
    );
  }
}
