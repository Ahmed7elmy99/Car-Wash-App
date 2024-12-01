import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ProductShimmerList extends StatelessWidget {
  const ProductShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: SizedBox(
            width: 82.w,
            height: 105.h,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35.r,
                ),
                SizedBox(height: 5.h),
                Container(
                  width: 50.w,
                  height: 10.h,
                  color: Colors.grey.shade300,
                ),
              ],
            ),
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(width: 10.w),
        itemCount: 4);
  }
}
