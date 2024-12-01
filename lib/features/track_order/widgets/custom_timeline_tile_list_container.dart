import 'package:car_wash_mobile_app/features/track_order/widgets/custom_expanded_button.dart';
import 'package:car_wash_mobile_app/features/track_order/widgets/custom_timeline_tile_item.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../../gen/colors.gen.dart';

/// container for the time line tile list
/// created by naira ali
/// created at 15/10/2024

class CustomTimelineTileListContainer extends StatelessWidget {
  const CustomTimelineTileListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorName.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(35.r)),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                  top: 0.h, start: 14.w, end: 14.w, bottom: 0.h),
              child: ListView(
                children: [
                  ///first timeline tile [duration to arrive ]
                  CustomTimelineTileItem(
                    areaName: 'إسم الحي',
                    townName: 'Bellaire Town',
                    isAreaDisplayed: true,
                    headerName: "15 دقيقة مبقية للوصول",
                    addressDetailsHeader: "إسم الشارع, المدينة, الحي",
                    iconPath: Assets.images.clockIcon.path,
                    dotIndicatorColor: ColorName.greyColor,
                  ),

                  ///second timeline tile
                  CustomTimelineTileItem(
                    isAreaDisplayed: false,
                    headerName: "موقع التسليم",
                    addressDetailsHeader: "إسم الشارع, المدينة, الحي",
                    iconPath: Assets.images.starIcon.path,
                    dotIndicatorColor: ColorName.mintGreen,
                  ),
                  SizedBox(height: 22.h),

                  ///back to reservations button
                  CustomExpandedButton(
                    text: "back_to_reservations".tr,
                    onTap: () {
                      //Edit At Date (28/10/2024)
                      //Edit By : amr elnbawy
                      //Edit Note : changed from push to pop
                      context.pop();
                    },
                  ),
                  SizedBox(height: 25.h),
                ],
              ),
            )));
  }
}
