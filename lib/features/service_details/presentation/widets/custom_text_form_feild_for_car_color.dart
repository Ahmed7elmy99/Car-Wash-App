import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_textfield.dart';

import 'package:car_wash_mobile_app/features/service_details/presentation/car_details_cubit/car_details_cubit.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// start: edited by helmy
//Edit At Date (11/11/2024)
// added customValidation to custom textFormFeild to be true and return the validation message if carColor is null at date(11/11/2024) by helmy
//show the color of the car that is selected in the textFormFeild by helmy at date(11/11/2024)
//fix all colors and text styles
class CustomTextFormFeildForCarColor extends StatefulWidget {
  const CustomTextFormFeildForCarColor({super.key});

  @override
  State<CustomTextFormFeildForCarColor> createState() =>
      _CustomTextFormFeildForCarColorState();
}

class _CustomTextFormFeildForCarColorState
    extends State<CustomTextFormFeildForCarColor> {
  // Added a method to open a color picker dialog when selecting car color.
  void openColorPicker(CarDetailsCubit carDetailsCubit) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Pick a color'),
          content: SingleChildScrollView(
            child: BlockPicker(
              pickerColor: carDetailsCubit.selectedColor,
              onColorChanged: (color) {
                setState(() {
                  carDetailsCubit.selectedColor = color;
                  print(
                      "Selected color: ${carDetailsCubit.selectedColor}"); // Updates selected color.
                });
              },
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Select'),
              onPressed: () {
                carDetailsCubit.carColor = carDetailsCubit.selectedColor.value
                    .toRadixString(16)
                    .padLeft(6, '0');

                print("Selected Hex Color: #${carDetailsCubit.carColor}");

                Navigator.of(context).pop(); // Closes the dialog.
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      // added customValidation to be true and return the validation message if carColor is null at date(11/11/2024) by helmy
      customValidation: true,
      //   isReadOnly: true,
      validator: (value) {
        // Check if carColor is null, then return the validation message.
        if (CarDetailsCubit.get(context).carColor == null ||
            CarDetailsCubit.get(context).carColor!.isEmpty) {
          return "please select car color".tr;
        }
        return null;
      },
      keyboardType: TextInputType.none,
      end: AppScreenUtils.isTablet ? 4.w : 5.w,
      top: AppScreenUtils.isTablet ? 4.h : 4.h,
      bottom: AppScreenUtils.isTablet ? 4.h : 4.h,
      start: AppScreenUtils.isTablet ? 13.w : 15.w,
      suffixIcon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          //show the color of the car that is selected in the textFormFeild by helmy at date(11/11/2024)
          Text("color".tr,
              style: AppTextStyles.kBlack12FontW700
                  .copyWith(color: CarDetailsCubit.get(context).selectedColor)),
          SizedBox(
            width: 6.w,
          ),
          Container(
            width: 16.w,
            height: 14.h,
            decoration: BoxDecoration(
              color: CarDetailsCubit.get(context).selectedColor,
              borderRadius: BorderRadius.circular(2.r),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          GestureDetector(
            // Changed suffixIcon to be tappable for color picking.
            onTap: () {
              openColorPicker(CarDetailsCubit.get(
                  context)); // Opens color picker dialog on tap.
            },
            child: Image.asset(
              Assets.images.colorOfTheCar.path,
              fit: AppScreenUtils.isTablet
                  ? BoxFit.contain
                  : BoxFit.none, // Ensures proper image fit.
              // width: 50.w, // Adjusted width for larger icon.
              // height: 47.h, // Adjusted height for larger icon.
            ),
          ),
        ],
      ),
      suffixIconConstraints: BoxConstraints(
          minWidth: 50.w, minHeight: 47.h // Adjusted width for larger icon.
          ),
      label: "carColor".tr, // Unchanged
      hintText: "carColor".tr, // Unchanged
      prefixIcon: Padding(
        padding: EdgeInsets.only(left: 8.w),
        child: Image.asset(
          Assets.images.carColorIcon.path,
          fit: BoxFit.contain,
          width: 17.11.w,
          height: 11.h,
        ),
      ),
    );
  }
}
