import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/home/presentation/screens/bottom_nav_bar.dart';
import 'package:car_wash_mobile_app/features/track_order/screens/track_order_screen.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

// Created by: Nadeen Mohamed
// Created at date: 20/10/2024
// This widget contains the body of the success message body with confetti

class SuccessMessageBody extends StatelessWidget {
  const SuccessMessageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Lottie.asset(
                Assets.lottie.confetti
                    .path, // Path to your Lottie confetti JSON file
                width:
                    MediaQuery.of(context).size.width, // Adjust size as needed
                height: 300.h, // Set appropriate height for confetti effect
                repeat: true // Set to true if you want it to loop
                ),
            // The medal image
            SvgPicture.asset(
                width: 93.w,
                height: 93.h,
                Assets.images.twemojiSportsMedal.path),
          ],
        ),
        SizedBox(
          height: 29.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                'congratulations_text'.tr,
                style: AppTextStyles.kBlack20FontW700,
              ),
              SizedBox(
                height: 21.h,
              ),
              Text(
                textAlign: TextAlign.center,
                'payment_completed'.tr,
                style: AppTextStyles.kBlack12FontW700,
              ),
              SizedBox(
                height: 21.h,
              ),
              CustomButton(
                  boarderRadius: 10.r,
                  width: 374.w,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: SvgPicture.asset(
                            Assets.images.rightArrow.path,
                            width: 12.w,
                            height: 16.h,
                          ), // Right arrow icon
                        ),
                        Text('back_to_home'.tr, // Translated confirm text
                            style: AppTextStyles.kWhite15FontW700),
                      ],
                    ),
                  ),
                  onTap: () {
                    GoRouter.of(context).pushNamed(BottomNavBar.id);
                  }),
              SizedBox(
                height: 7.h,
              ),
              CustomButton(
                boarderRadius: 10.r,
                color: ColorName.black,
                width: 374.w,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                        child: SvgPicture.asset(
                          Assets.images.rightArrow.path,
                          width: 12.w,
                          height: 16.h,
                        ), // Righ
                        // Right arrow icon
                      ),
                      Text('track_order'.tr,
                          style: AppTextStyles.kWhite15FontW700),
                    ],
                  ),
                ),
                onTap: () {
                  GoRouter.of(context).pushNamed(TrackOrderScreen.id);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
