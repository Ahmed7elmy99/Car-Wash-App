import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LanguageSwitchButton extends StatefulWidget {
  const LanguageSwitchButton({super.key});

  @override
  State<LanguageSwitchButton> createState() => _LanguageSwitchButtonState();
}

class _LanguageSwitchButtonState extends State<LanguageSwitchButton> {
  Locale get localeFromSelected =>
      isSelected.first == true ? const Locale("ar") : const Locale("en");

  List<bool> isSelected = [
    Get.locale == const Locale("ar"),
    Get.locale == const Locale("en")
  ];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      constraints: BoxConstraints(
        maxHeight: 32.h,
        minHeight: 32.h,
      ),
      borderRadius: BorderRadius.circular(5.r),
      fillColor: ColorName.mintGreen,
      selectedColor: ColorName.white,
      color: ColorName.mainBlackColor,
      isSelected: isSelected,
      onPressed: (int index) {
        setState(() {
          for (int i = 0; i < isSelected.length; i++) {
            isSelected[i] = i == index;
          }
          Get.updateLocale(localeFromSelected);
        });
      },
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Text(
            'عربي',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Text(
            'EN',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
