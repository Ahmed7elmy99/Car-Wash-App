import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timelines_plus/timelines_plus.dart';

import '../../../gen/colors.gen.dart';

//created by naira ali
//created at 15/10/2024
//to make the single timeline tile

class CustomTimelineTileItem extends StatelessWidget {
  const CustomTimelineTileItem(
      {super.key,
      required this.isAreaDisplayed,
      this.areaName,
      this.townName,
      required this.headerName,
      required this.addressDetailsHeader,
      required this.iconPath,
      required this.dotIndicatorColor});

  final String? areaName;

  final String? townName;

  final bool isAreaDisplayed;

  final String headerName;

  final String addressDetailsHeader;

  final String iconPath;

  final Color dotIndicatorColor;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
        contents: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headerName,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: ColorName.hardGreyColor),
                ),
                SizedBox(height: 8.h),
                Text(
                  addressDetailsHeader,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: ColorName.hardGreyColor),
                ),

                ///for more details
                if (isAreaDisplayed)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 35.55.h),
                      Text(
                        areaName!,
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: ColorName.veryLightGreyColor),
                      ),
                      SizedBox(height: 24.19.h),
                      Text(
                        townName!,
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: ColorName.veryLightGreyColor),
                      ),
                    ],
                  )
              ],
            )),

        ///time line node and line styling
        node: TimelineNode(
          position: 0,
          indicator: DotIndicator(
              position: 0.05,
              size: 33.0.r,
              color: dotIndicatorColor,
              child: SizedBox(
                width: 17.h,
                height: 17.h,
                child: Padding(
                  padding: EdgeInsetsDirectional.symmetric(
                      vertical: 8.h, horizontal: 5.w),
                  child: Image.asset(
                    iconPath,
                    fit: BoxFit.fill,
                  ),
                ),
              )),
          startConnector: null,
          endConnector: const DashedLineConnector(color: ColorName.orangeColor),
        ));
  }
}
