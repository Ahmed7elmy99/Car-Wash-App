import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';

//created by : Abdullah Ghaith
//created at : 14/10/2024
//Address radio button widget to display the address radio button
class CustomAddNewRadioButton extends StatelessWidget {
  final bool isSelected;
  final String label;
  final Function() onTap;

  const CustomAddNewRadioButton({
    super.key,
    required this.isSelected,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // GestureDetector only around the radio button
              GestureDetector(
                onTap: onTap, // Tapping only affects the radio button
                child: Container(
                  padding: null,
                  width: 20.sp, // Radio button size
                  height: 20.sp,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isSelected
                          ? ColorName.mintGreen
                          : Colors.grey, // Color of the border
                      width: 1.0, // Set the thickness of the border here
                    ),
                  ),
                  child: isSelected
                      ? Center(
                          child: Container(
                            width: 10.sp,
                            height: 10.sp,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorName.mintGreen,
                            ),
                          ),
                        )
                      : null,
                ),
              ),
              const SizedBox(
                  width: 5), // Space between the radio button and label
              Text(
                label,
                style: AppTextStyles.kBlack12FontW400,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
