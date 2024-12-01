import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommunicationContainer extends StatelessWidget {
  const CommunicationContainer({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 51.w,
      height: 49.h,
      decoration: BoxDecoration(
        color: ColorName.lightMintGreenColor,
        // Edited by: Nadeen Mohamed
        // Edited at date: 20/10/2024
        // Edit note: Use ScreenUtil in borderRadius
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Center(
          child: SvgPicture.asset(
        imagePath,
        // Edited by: nadeen mohamed
        // Edited at date: 17/10/2024
        // Edit note: change width and height for the image
        width: 19.w,
        height: 19.h,
      )),
    );
  }
}
