import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseTimeContainer extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  // Edited by: Nadeen Mohamed
  // Edited at date: 31/10/2024
  // Edit note: add new property to hold the time text
  final String timeLabel;

  const ChooseTimeContainer({
    super.key,
    required this.isSelected,
    required this.onTap,
    // Edited by: Nadeen Mohamed
    // Edited at date: 31/10/2024
    // Edit note: Accept timeLabel in constructor
    required this.timeLabel,
  });

  @override
  Widget build(BuildContext context) {
    // Edited by: Nadeen Mohamed
    // Edited at date: 15/10/2024
    // Add ConstrainedBox with maxWidth and maxHeight to the container
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 70.w,
        maxHeight: 36.h,
      ),
      child: Padding(
        // Edited by: Nadeen Mohamed
        // Edited at date: 17/10/2024
        // Edit note: Use screenUtil(.w) in padding
        padding: EdgeInsets.symmetric(horizontal: 7.w),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              // Edited by: nadeen mohamed
              // Edited at date: 17/10/2024
              // Edit note: add r to th borderRadius
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color:
                    isSelected ? ColorName.mintGreen : const Color(0xffCDCFCE),
              ),
              boxShadow: [
                BoxShadow(
                  color: ColorName.purpleColorShadow.withOpacity(0.01),
                  offset: const Offset(0, 4),
                  blurRadius: 16,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Center(
              child: Text(
                // Edited by: Nadeen Mohamed
                // Edited at date: 31/10/2024
                // Edit note:  Display dynamic time label here
                timeLabel,
                style: TextStyle(
                  // Edited by: nadeen mohamed
                  // Edited at date: 17/10/2024
                  // Edit note: Add sp to fontSize to be responsive
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? ColorName.mintGreen : ColorName.black2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
