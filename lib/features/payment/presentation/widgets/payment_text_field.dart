// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentTextField extends StatelessWidget {
  const PaymentTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isNumber = false,
  });

  final TextEditingController controller;
  final String hintText;
  final bool? isNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: 10.h, start: 13.w, end: 11.w),
      child: Container(
        padding: EdgeInsetsDirectional.only(start: 16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r),
        ),
        //edited by : waleed
        //edited at : 21/10/2024
        //edits : make the textfield more bigger on tablet by give it padding
        //cursor color is changed to green
        //give style to textform field
        // make it check if the field is for numbers so we will use TextInputType.number
        child: TextFormField(
          keyboardType: isNumber != null && isNumber == true
              ? TextInputType.number
              : TextInputType.text,
          cursorColor: ColorName.green,
          style: AppTextStyles.kBlack11FontW400,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 12.h),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: AppTextStyles.kGery12WithOpacity50FontW400,
          ),
        ),
      ),
    );
  }
}
