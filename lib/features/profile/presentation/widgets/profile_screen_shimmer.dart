/*
created by : Mohamed Waleed
created at : 12/10/2024
This widget represents the ProfileScreenBody, which is used to show the user's profile and details (name, image, location),
and contains tabs for packages and reservations.

edited by : Mohamed Waleed 
edited at : 19/10/2024
edits :
use NestedScrollView instead of CustomScrollView because we don't want to make a scrollable view in the body just scroll the whole screen to provide better user experience  
*/

import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/core/widgets/profile_image_shimmer.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/custom_curve_clipper.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/settings_button.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ProfileScreenShimmer extends StatelessWidget {
  const ProfileScreenShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: AppScreenUtils.w,
          height: 260.h,
          child: Stack(
            children: [
              ClipPath(
                clipper: CustomCurveClipper(),
                child: Container(
                  height: 170.h,
                  width: AppScreenUtils.w,
                  color: ColorName.mintGreen, // Background color
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.h), // Padding from the top
                child: const Align(
                  alignment:
                      Alignment.topCenter, // Aligns children to the top center
                  child: Row(
                    children: [
                      CustomBackButton(iconColor: Colors.white), // Back button
                      Spacer(), // Adds space between back button and icons
                      // Edit icon that will lead us to edit profile screen
                      SettingsButton(),
                    ],
                  ),
                ),
              ),
              // Profile photo
              const Align(
                alignment: Alignment
                    .bottomCenter, // Aligns the photo to the bottom center
                child: ProfileImageShimmer(),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        Shimmer.fromColors(
          enabled: true,
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Column(
            children: [
              Container(
                width: 100.w,
                height: 20.h,
                margin: EdgeInsets.only(bottom: 8.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
              SizedBox(height: 25.h),
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Row(
                  children: [
                    ...List.generate(
                      3,
                      (index) {
                        return Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.w),
                            child: Container(
                              height: 50.h,
                              margin: EdgeInsets.only(bottom: 8.h),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: 25.h),
              Padding(
                padding: EdgeInsets.all(12.w),
                child: Container(
                  width: AppScreenUtils.w,
                  height: 50.h,
                  margin: EdgeInsets.only(bottom: 8.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 100.w,
                        height: 20.h,
                        margin: EdgeInsets.only(bottom: 8.h),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
