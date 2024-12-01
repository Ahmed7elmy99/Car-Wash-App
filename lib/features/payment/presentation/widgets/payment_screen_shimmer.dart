import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class PaymentScreenShimmer extends StatelessWidget {
  const PaymentScreenShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppScreenUtils.w,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 16.h,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 16.h,
              ),
              decoration: BoxDecoration(
                color: ColorName.lightMintGreenColor,
                borderRadius: BorderRadius.circular(14.r),
              ),
              width: AppScreenUtils.w,
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Center(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Container(
                            width: 150.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 30.h,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ...List.generate(
            5,
            (index) {
              return Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Padding(
                  padding:
                      EdgeInsets.only(right: 16.w, bottom: 16.h, left: 40.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 41.h,
                            height: 31.h,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(3.r),
                            ),
                          ),
                          SizedBox(width: 5.h),
                          Container(
                            width: 100.w,
                            height: 5.h,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 30.h,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
