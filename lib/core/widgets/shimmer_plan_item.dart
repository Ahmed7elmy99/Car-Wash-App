import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPlanItem extends StatelessWidget {
  const ShimmerPlanItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.w,
      height: 198.h,
      color: ColorName.greenish,
      child: Padding(
        padding: EdgeInsetsDirectional.all(10.sp),
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100.w,
                        height: 10.h,
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(height: 5.h),
                      Container(
                        width: 50.w,
                        height: 10.h,
                        color: Colors.grey.shade300,
                      ),
                    ],
                  ),
                  Icon(
                    Icons
                        .keyboard_arrow_up_rounded, // Arrow pointing up if expanded
                    color: Colors.black,
                    size: 25.sp,
                  ),
                ],
              ),
              SizedBox(height: 25.h),
              Container(
                width: 50.w,
                height: 10.h,
                color: Colors.grey.shade300,
              ),
              SizedBox(height: 5.h),
              Container(
                width: 50.w,
                height: 10.h,
                color: Colors.grey.shade300,
              ),
              const Spacer(),
              Center(
                child: Container(
                  width: 185.w,
                  height: 38.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
