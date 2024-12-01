//created by : Abdullah Ghaith
//created at : 1/10/2024
import 'dart:developer';

import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum CustomTextFieldType { phone, email, password, name, text }

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final String label;
  final Widget? icon;
  final Function(String)? onChanged;
  final bool? obscureText;
  final String? obsecuringCharacter;
  final TextInputType? keyboardType;
  final CustomTextFieldType? type;
  final TextEditingController? textEditingController;
  final int? maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? hintTextStyle;
  final BoxConstraints? prexixIconConstraints;
  final BoxConstraints? suffixIconConstraints;

  const CustomTextFormField(
      {super.key,
      this.onChanged,
      required this.hintText,
      this.icon,
      this.obscureText = false,
      this.obsecuringCharacter = "*",
      this.textEditingController,
      this.keyboardType = TextInputType.text,
      this.type = CustomTextFieldType.text,
      this.maxLines = 1,
      required this.prefixIcon,
      this.suffixIcon,
      required this.label,
      this.hintTextStyle,
      this.prexixIconConstraints,
      this.suffixIconConstraints});
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool isObsecured;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    isObsecured = widget.obscureText ?? false;
    _focusNode.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  void togglePasswordVisibility() {
    setState(() {
      isObsecured = !isObsecured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(
        top: AppScreenUtils.isTablet ? 8.h : 4.h,
        end: 23.w,
        bottom: AppScreenUtils.isTablet ? 8.h : 4.h,
        start: 11.w,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorName.grey.withOpacity(0.1),
          strokeAlign: 1,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextFormField(
        onTap: () {
          setState(() {
            _focusNode.requestFocus();
          });
          log("focus node has focus : ${_focusNode.hasFocus}");
        },
        focusNode: _focusNode,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "This Field Can't be empty";
          } else {
            return null;
          }
        },
        maxLines: widget.maxLines,
        obscureText: isObsecured,
        obscuringCharacter: "*",
        enableSuggestions: true,
        controller: widget.textEditingController,
        style: AppTextStyles.kBlack11FontW400,
        cursorColor: ColorName.green,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          prefixIconConstraints: widget.prexixIconConstraints ??
              BoxConstraints(
                minWidth: 30.w,
                minHeight: 25.h,
                maxWidth: 30.w,
                maxHeight: 25.h,
              ),
          contentPadding: EdgeInsetsDirectional.only(start: 16.w, end: 15.w),
          labelText: _focusNode.hasFocus ? widget.label : widget.hintText,
          labelStyle: _focusNode.hasFocus
              ? AppTextStyles.kBlack11FontW400
              : AppTextStyles.kGery11WithOpacity50FontW400,
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon,
          hintStyle: widget.hintTextStyle ??
              AppTextStyles.kGery11WithOpacity50FontW400,
          border: InputBorder.none,
          suffixIconConstraints: widget.suffixIconConstraints ??
              BoxConstraints(
                minWidth: AppScreenUtils.isTablet ? 20.w : 20.w,
                minHeight: AppScreenUtils.isTablet ? 25.h : 25.h,
                maxWidth: AppScreenUtils.isTablet ? 20.w : 20.w,
                maxHeight: AppScreenUtils.isTablet ? 25.h : 25.h,
              ),
          suffixIcon: checkAboutSuffixIcon(),
        ),
      ),
    );
  }

  ///make check if the suffix icon is specified or no , if so then it will be returned and if not then make another check if the obsecure text is set to true and if so then it will provide a button to toggle the obsecure
  Widget? checkAboutSuffixIcon() {
    if (widget.suffixIcon != null) {
      return widget.suffixIcon;
    } else if (widget.obscureText == true) {
      return GestureDetector(
        onTap: () {
          togglePasswordVisibility();
        },
        child: isObsecured
            ? Assets.images.eyeDisabled.svg(height: 18.75.h, width: 16.w)
            : Assets.images.eyeEnabled.svg(height: 18.75.h, width: 16.w),
      );
    } else {
      return null;
    }
  }
}
