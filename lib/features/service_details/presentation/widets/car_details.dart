import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
// Edited by: nadeen mohamed
// Edited at date: 24/10/2024
// Edit note: remove unused imports
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// start: edited by helmy
//Edit At Date (21/10/2024)
//fix all colors and text styles
class CarDetails extends StatelessWidget {
  const CarDetails({super.key, required this.carName, required this.carImage});
  final String carName;
  final String carImage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // if (context.mounted) {
        //   context.pushNamed(CarDetailsScreen.id);
        // }
      },
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          // Positioned(
          //   top: 8.h,
          //   left: 7.w,
          //   child: SizedBox(
          //     width: 12.w,
          //     height: 12.h,
          //     child: Transform.scale(
          //       scale: AppScreenUtils.isTablet ? 1.5 : 1,
          //       child: Image.asset(
          //         Assets.images.editIconPng.path, // Edit icon
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            padding: EdgeInsets.only(
              top: AppScreenUtils.isTablet ? 30.h : 16.h,
              right: AppScreenUtils.isTablet ? 10.w : 9.w,
              bottom: AppScreenUtils.isTablet ? 30.h : 12.h,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors
                      .grey[300]!), // Border for the car details container
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Row(
              children: [
                //removed padding from this container by helmy (16/10/2024)
                SizedBox(
                    height: 65.h,
                    width: 85.w,
                    child: Transform.scale(
                      scale: AppScreenUtils.isTablet ? 1.5 : 1,
                      child: Image.network(
                        // start: edited by helmy (19/10/2024)
                        //add fit: BoxFit.contain,
                        carImage,
                        fit: BoxFit.contain, // Car image
                      ),
                    )),
                SizedBox(
                  width: 12.w,
                ),
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align text to the start
                  children: [
                    // Car Name
                    Row(
                      children: [
                        // Text("car".tr,
                        //     style: AppTextStyles.kBlack12FontW700), // Car label
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(carName,
                            style: AppTextStyles
                                .black12FontPoppinsW600) // Car model
                      ],
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    // Car Color
                    // Row(
                    //   children: [
                    //     Text("car_color".tr,
                    //         style: AppTextStyles
                    //             .kDarkBlueGrey10FontW400), // Car color label
                    //     SizedBox(
                    //       width: 2.w,
                    //     ),
                    //     Text("blue".tr,
                    //         style: AppTextStyles
                    //             .kBlue10FontW700) // Car color value
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 6.h,
                    // ),
                    // // Car Number
                    // Row(
                    //   children: [
                    //     Text("car_number".tr,
                    //         style: AppTextStyles
                    //             .kDarkBlueGrey10FontW400), // Car number label
                    //     SizedBox(
                    //       width: 2.w,
                    //     ),
                    //     Text("K1544128".tr,
                    //         style: AppTextStyles
                    //             .black10InterFontInterW400) // Car number value
                    //   ],
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
