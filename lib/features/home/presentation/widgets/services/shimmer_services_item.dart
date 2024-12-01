import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerServicesItem extends StatelessWidget {
  const ShimmerServicesItem({super.key});


  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Column(
      children: [
        Container(
          color: Colors.transparent,
          // height: 270.h,

          height: isLandscape
              ? MediaQuery.of(context).size.height *
              0.57 // Adjust for landscape
              : MediaQuery.of(context).size.height * 0.3, // Portrait

          // height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 161.w,
                  height: 230.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(color: ColorName.grey.withOpacity(0.1))),
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 8.w, vertical: 15.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 88.h,
                                color: Colors.grey.shade300,
                              ),
                              SizedBox(height: 10.h),
                              Container(
                                width: 50.w,
                                height: 10.h,
                                color: Colors.grey.shade300,
                              ),
                              SizedBox(height: 10.h),
                              Container(
                                width: 50.w,
                                height: 10.h,
                                color: Colors.grey.shade300,
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: 161.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.r),
                                  bottomRight: Radius.circular(20.r))),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) =>
                  SizedBox(width: 10.w),
              itemCount: 2),
        ),
        SizedBox(height: 27.5.h),
      ],
    );
  }
}
