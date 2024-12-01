import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class MessageDetailsCustomTextField extends StatelessWidget {
  const MessageDetailsCustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.preIcon});

  final TextEditingController controller;
  final String hintText;
  final String preIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.w, 19.h, 0.w, 0.h),
      child: TextFormField(
        onFieldSubmitted: (value) {},
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText.tr,
          hintStyle: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            color: ColorName.grey.withOpacity(0.5),
          ),
          prefixIcon: Image.asset(preIcon),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: ColorName.grey.withOpacity(0.1))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: ColorName.grey.withOpacity(0.1))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: ColorName.grey.withOpacity(0.1))),
        ),
      ),
    );
  }
}
