import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ReservationItemShimmer extends StatelessWidget {
  const ReservationItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(top: 6.sp, start: 15.sp),
      margin: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.sp),
        border: Border.all(width: 1.sp, color: ColorName.grey.withOpacity(.10)),
      ),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 9.sp, bottom: 6.sp),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 85.sp,
                    height: 65.sp,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10.sp),
                    ),
                    clipBehavior: Clip.hardEdge,
                  ),
                  SizedBox(width: 12.sp), // Space between lines

                  Expanded(
                      child: SizedBox(
                    height: 65.sp,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: AppScreenUtils.w * (1 / 2),
                          height: 5.h,
                          color: Colors.grey.shade300,
                        ),
                        const SizedBox(height: 12), // Space between lines

                        Container(
                          width: AppScreenUtils.w * (1 / 3),
                          height: 5.h,
                          color: Colors.grey.shade300,
                        ),
                        const SizedBox(height: 12), // Space between lines

                        Container(
                          width: AppScreenUtils.w * (1 / 4),
                          height: 5.h,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                  )),
                  Padding(
                    padding: EdgeInsetsDirectional.only(end: 13.sp),
                    child: Container(
                        color: Colors.grey.shade300,
                        width: 12.sp,
                        height: 12.sp),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.sp),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: List.generate(3, (index) {
                return Expanded(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.sp, vertical: 10.sp),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(9.r),
                    ),
                    child: SizedBox(
                      height: 45.h,
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
