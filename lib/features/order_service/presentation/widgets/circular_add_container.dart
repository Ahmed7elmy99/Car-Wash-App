import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularAddContainer extends StatelessWidget {
  const CircularAddContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 30.h,
      decoration: const BoxDecoration(
        color: ColorName.mintGreen,
        shape: BoxShape.circle,
      ),
      // Edited by : Nadeen Mohamed
      // Edited at date: 20/10/2024
      // Edit note: remove const keyword
      child: Center(
        child: Icon(
          Icons.add,
          // Edited by: Nadeen Mohamed
          // Edited at date: 20/10/2024
          // Edit note: Use ScreenUtil in the size of the screen
          size: 24.r,
          color: ColorName.white,
        ),
      ),
    );
  }
}
