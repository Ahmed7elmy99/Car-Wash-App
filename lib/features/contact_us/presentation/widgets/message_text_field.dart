import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MessageTextField extends StatefulWidget {
  const MessageTextField({super.key, required this.messageController});
  final TextEditingController messageController;

  @override
  State<MessageTextField> createState() => _MessageTextFieldState();
}

class _MessageTextFieldState extends State<MessageTextField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.w, 19.h, 0.w, 0.h),
      child: TextFormField(
        onFieldSubmitted: (value) {},
        controller: widget.messageController,
        maxLines: 5,
        decoration: InputDecoration(
          hintText: "type_a_message".tr,
          hintStyle: TextStyle(
            height: 12.h,
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            color: ColorName.grey.withOpacity(0.5),
          ),
          prefixIcon: Image.asset(Assets.images.emailIcon.path),
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
