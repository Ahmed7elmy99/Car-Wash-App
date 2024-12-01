import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BranchContainer extends StatelessWidget {
  const BranchContainer({super.key, required this.name, required this.address});

  final String name;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
              color: ColorName.darkBlackColor),
        ),
        SizedBox(height: 7.h),
        Text(
          address,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 10.sp,
              color: ColorName.hardGreyColor),
        ),
      ],
    );
  }
}
