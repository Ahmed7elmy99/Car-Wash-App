import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/widgets/cart_and_cart_contents_row.dart';
import 'package:car_wash_mobile_app/features/home/presentation/screens/bottom_nav_bar.dart';
import 'package:car_wash_mobile_app/features/home/presentation/screens/home_screen.dart';
// Edited by: nadeen mohamed
// Edited at date: 24/10/2024
// Edit note: import the correct path of order service screen after removing views folder
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

// Created by: Nadeen Mohamed
// Created at date: 20/10/2024
// This widget conatins the body of the cart when the cart is empty
class CartScreenEmptyBody extends StatelessWidget {
  const CartScreenEmptyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          const CartAndCartContentsRow(numberOfItems: '0'),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            padding: EdgeInsets.symmetric(vertical: 40.h),
            decoration: BoxDecoration(
              color: ColorName.greyColorBackground,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.shoppingBag.path),
                SizedBox(
                  height: 13.h,
                ),
                Text(
                  'no_services_in_cart'.tr,
                  style: AppTextStyles.kGery16FontW400,
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.37,
          ),
          CustomButton(
              boarderRadius: 10.r,
              width: 347.w,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 14.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Icon(
                        Icons.add,
                        color: ColorName.white,
                        size: 24.r,
                      ),
                    ),
                    Text(
                      'add_item'.tr,
                      style: AppTextStyles.kWhite15FontW700,
                    ),
                  ],
                ),
              ),
              onTap: () {
                //edited by omnia [26/11/2024]
              context.pushNamed(BottomNavBar.id,extra: 2);
              }),
        ],
      ),
    );
  }
}
