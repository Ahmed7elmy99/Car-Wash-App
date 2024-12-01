/*
created by : Mohamed Waleed 
created at : 12/10/2024
edited by : Mohamed Waleed
edited at : 16/10/2024
edits :
- remove bottom padding from the user details list to solve the conflict with the bottom navigation bar
___________________________________________________________________________________________________________________
edited by : Mohamed Waleed
edited at : 19/10/2024
edits :
- using column and list.generate instead of ListView because we don't need it to be scrollable
 */

import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

/// Returns a button that is used to confirm the user details.
/// The button contains a right arrow icon and the text "confirm".
/// The button is used at the bottom of the user details list.
class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    super.key,
    required this.onTap,
    this.child,
  });
  final void Function()? onTap;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: CustomButton(
        boarderRadius: 10.r,
        width: 374.w,
        onTap: onTap,
        child: child ??
            Padding(
              padding: EdgeInsets.symmetric(vertical: 14.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Assets.images.rightArrow.svg(
                      width: 12.w,
                      height: 16.h,
                    ), // Right arrow icon
                  ),
                  Text(
                    'confirm'.tr, // Translated confirm text
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
