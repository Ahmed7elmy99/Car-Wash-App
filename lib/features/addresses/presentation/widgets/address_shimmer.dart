import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';

class CustomRadioButtonShimmer extends StatelessWidget {
  const CustomRadioButtonShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(color: const Color(0xffE8E8E8), width: 1.5),
        ),
        margin: EdgeInsets.symmetric(vertical: 5.sp),
        padding: EdgeInsets.symmetric(horizontal: 18.sp, vertical: 20.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // Placeholder for radio button
                Container(
                  width: 20.sp,
                  height: 20.sp,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 8),
                // Placeholder for address label
                Container(
                  width: 100.sp,
                  height: 12.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                // Placeholder for edit and delete icons
                Container(
                  width: 30.sp,
                  height: 30.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 5.sp),
                Container(
                  width: 30.sp,
                  height: 30.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  width: 20.sp,
                  height: 20.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 15),
                // Placeholder for address details
                Expanded(
                  child: Container(
                    height: 12.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Placeholder for button if present
            Container(
              height: 40.sp,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.r),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
