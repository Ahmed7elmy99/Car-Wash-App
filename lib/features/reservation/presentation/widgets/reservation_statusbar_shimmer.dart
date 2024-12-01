import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ReservationStatusbarShimmer extends StatelessWidget {
  const ReservationStatusbarShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43.h,
      margin: EdgeInsets.symmetric(horizontal: 67.sp),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.sp),
          color: ColorName.babybluelight),
      child: Padding(
        padding: EdgeInsets.all(4.sp),
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                3,
                (i) => Flexible(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.sp, vertical: 5.sp),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(9.r)),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
