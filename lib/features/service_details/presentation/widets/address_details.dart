import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/features/add_new_address/presentation/screens/add_new_address_screen.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

// start: created by helmy (14/10/2024)
class AddressDetails extends StatelessWidget {
  // Edited by: Nadeen Mohamed
  // Edited at date: 3/11/2024
  // Edit note: create object from AddressModel for selectedAddress
  const AddressDetails({super.key, required this.selectedAddress});
  final String selectedAddress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Address Information
        Row(
          children: [
            Transform.scale(
              scale: AppScreenUtils.isTablet ? 1.7 : 1,
              child: Image.asset(
                Assets.images.locationIcon.path,
                //  width: 30.w,
                //  height: 30.w, // Icon for location
              ),
            ),
            SizedBox(width: 7.75.w),
            Text(
                // Edited by: Nadeen Mohamed
                // Edited at date: 3/11/2024
                // Edit note: display neighborhood,street and city from selectedAddress
                selectedAddress,
                style: AppTextStyles.kGrey12InterFontW400), // Address text
          ],
        ),
        const Spacer(), // Spacer to push elements to the right
        // Edit Address Button
        Row(
          children: [
            GestureDetector(
              onTap: () {
                if (context.mounted) {
                  context.pushNamed(AddNewAddressScreen.id);
                }
              },
              child: Container(
                height: 38.h,
                width: AppScreenUtils.isTablet ? 30.w : 40.w,
                decoration: BoxDecoration(
                  color: ColorName.mintGreenColor
                      .withOpacity(0.10), // Background color for the button
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: SizedBox(
                  //   width: 11.w,
                  //  height: 11.h,
                  child: Icon(
                    Icons.add,
                    size: AppScreenUtils.isTablet ? 16.sp : 18.sp,
                  ),
                ),
              ),
            ),
            SizedBox(width: 12.w),
            GestureDetector(
              onTap: () {
                if (context.mounted) {
                  context.pushNamed(AddNewAddressScreen.id);
                }
              },
              child: Container(
                height: AppScreenUtils.isTablet ? 42.h : 38.h,
                width: AppScreenUtils.isTablet ? 75.w : 81.w,
                decoration: BoxDecoration(
                  color: ColorName
                      .lightGreyColor, // Background color for edit button
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 12.h,
                      width: 12.w,
                      child: Transform.scale(
                        scale: AppScreenUtils.isTablet ? 1.5 : 1,
                        child: Image.asset(
                          Assets.images.editIconPng.path, // Edit icon
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text('edit'.tr,
                        style: AppTextStyles
                            .kBlack10Font700 // Edit button text style
                        )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
