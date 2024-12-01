import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class UserPackageExpansionShimmer extends StatelessWidget {
  const UserPackageExpansionShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorName
            .lightMintGreenColor, // Background color of the package card
        borderRadius: BorderRadius.circular(8.r), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 10.r,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(23.h),
        child: Shimmer.fromColors(
          enabled: true,
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons
                        .keyboard_arrow_down_rounded,
                    color: Colors.black,
                    size: 25.sp,
                  ),
                  Container(
                    width: 100.w,
                    height: 20.h,
                    margin: EdgeInsets.only(bottom: 8.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 100.w,
                    height: 50.h,
                    margin: EdgeInsets.only(bottom: 8.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
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
                      SizedBox(height: 8.h),
                      Container(
                        width: 80.w,
                        height: 20.h,
                        margin: EdgeInsets.only(bottom: 8.h),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                      SizedBox(height: 16.h),
                    ],
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
              const SizedBox(height: 16),
              ...List.generate(
                3,
                (index) => Padding(
                  padding: EdgeInsets.only(bottom: 19.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.grey[300],
                        size: 20.sp,
                      ),
                      const Spacer(),
                      Container(
                        width: 180,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              Container(
                width: double.infinity,
                height: 48.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                width: double.infinity,
                height: 48.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
