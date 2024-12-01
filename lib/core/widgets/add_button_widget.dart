import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddButtonWidget extends StatelessWidget {
  const AddButtonWidget(
      {super.key,
      required this.onTap,
      this.size = 30,
      this.boarderRadius = 10});

  final VoidCallback onTap;
  final double size, boarderRadius;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      boarderRadius: boarderRadius.sp,
      width: size.sp,
      height: size.sp,
      onTap: onTap,
      color: ColorName.lightCyan,
      child: Icon(
        Icons.add,
        weight: 20.sp,
        size: (size.sp - 10.sp),
      ),
    );
  }
}
