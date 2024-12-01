import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerSearchItem extends StatelessWidget {
  const ShimmerSearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: ListTile(
            contentPadding: const EdgeInsets.only(left: 0),
            leading: Container(
              width: 66.sp,
              height: 44.sp,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            title: Container(
              height: 16.h,
              width: 150.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              margin: const EdgeInsets.only(bottom: 4.0),
            ),
          ),
        )
      ],
    );
  }
}
