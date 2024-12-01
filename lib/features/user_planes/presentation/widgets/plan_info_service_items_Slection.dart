import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/all_plans/all_plans_model.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/features/user_planes/data/model/single_plan_info_model.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/cubits/packages_cubit/packages_cubit.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/screen/plan_service_booking_screen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class PlanInfoServiceItemsSelection extends StatelessWidget {
  const PlanInfoServiceItemsSelection(
      {super.key,
      required this.packageModel,
      required this.selectedItems,
      this.scrollDirection = Axis.vertical,
      this.height});

  final Axis scrollDirection;

  final double? height;

  final SinglePlanInfoModel packageModel;
  final Function(List<AllPlanServiceItem> items) selectedItems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: AppScreenUtils.w,
      child: ListView.builder(
        scrollDirection: scrollDirection,
        itemCount: packageModel.serviceItems.length,
        itemBuilder: (context, i) {
          final item = packageModel.serviceItems[i];
          return InkWell(
            onTap: () {},
            child: Container(
              width:
                  scrollDirection == Axis.horizontal ? 271.w : AppScreenUtils.w,
              padding: EdgeInsets.all(
                  scrollDirection == Axis.horizontal ? 15.sp : 20.sp),
              margin: EdgeInsets.all(
                  scrollDirection == Axis.horizontal ? 5.sp : 12.sp),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: ColorName.black.withOpacity(0.08), // 8% opacity
                      offset: const Offset(0, 4), // X: 0, Y: 4
                      blurRadius: 20.r, // Blur radius of 20
                      spreadRadius: 0, // No spread
                    ),
                  ],
                  color: ColorName.white,
                  borderRadius: BorderRadius.circular(12.r)),
              child: ListTile(
                contentPadding: const EdgeInsets.all(0),
                leading: CachedNetworkImage(
                  imageUrl: item.serviceImage,
                  width: 80.w,
                ),
                title: Text(item.serviceName,
                    style: AppTextStyles.kBlack12FontW700),
                subtitle: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "${item.numberTimesUsed}/", // Displays price with currency
                        style: AppTextStyles.black12FontPoppinsW700,
                      ),
                      TextSpan(
                        // Displays duration (e.g., monthly)
                        text: "numberTimesUsed".tr,
                        style: AppTextStyles.blackText16FontW700,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
