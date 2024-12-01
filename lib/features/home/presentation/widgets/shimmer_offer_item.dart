import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerOfferItem extends StatelessWidget {
  const ShimmerOfferItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorName.mintGreenColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16.r)),
      padding: EdgeInsetsDirectional.only(end: 8.w),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(start: 10.w),
              child: Container(
                width: 50.w,
                height: 63.h,
                color: Colors.grey.shade300,
              ),
            ),
            SizedBox(width: 9.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100.w,
                  height: 10.h,
                  color: Colors.grey.shade300,
                ),
                SizedBox(height: 7.h),
                Container(
                  width: 200.w,
                  height: 10.h,
                  color: Colors.grey.shade300,
                ),
                SizedBox(height: 7.h),
                Row(
                  children: [
                    Container(
                      width: 50.w,
                      height: 10.h,
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(width: 6.w),
                    Container(
                      width: 50.w,
                      height: 10.h,
                      color: Colors.grey.shade300,
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                Container(
                  width: 50.w,
                  height: 10.h,
                  color: Colors.grey.shade300,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
