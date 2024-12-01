import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/booking/detailed_booking_data.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/reservation/logic/cubit/reservation_cubit.dart';
import 'package:car_wash_mobile_app/features/track_order/screens/track_order_screen.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

/// Created by: Amr Elnbawy
/// Created at Date: 14-oct-2024
/// [ReservationItemButtons] defines a widget that displays action buttons
/// related to the reservation (confirm, cancel, reserve, or track).
/// The available buttons change based on whether the reservation is active or not.
class ReservationItemButtons extends StatelessWidget {
  const ReservationItemButtons({
    super.key,
    required this.model,
  });

  // Indicates if the reservation is active or inactive
  // final bool active;
  final DetailedBookingData model;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (false)
          Flexible(
            child: CustomButton(
              // width: 150.w,
              // height: 38.sp,
              onTap: () {}, // Confirm button tap event
              color: ColorName.verylightgreen,
              boarderRadius: 9.r,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 10.h),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.scale(
                      scale: AppScreenUtils.isTablet ? 2 : 1,
                      child: Assets.images.homeIcons.doneIcon.image(),
                    ), // Confirm icon
                    SizedBox(width: 5.w),
                    Text(
                      "confirm".tr,
                      softWrap: true,
                      style:
                          AppTextStyles.kBlack12FontW700, // Confirm button text
                    ),
                  ],
                ),
              ),
            ),
          ),

        if (model.status == "cancel")
          Flexible(
            child: CustomButton(
              onTap: () {}, // Canceled button tap event
              color: const Color.fromARGB(
                  255, 253, 206, 206), // Red color for canceled
              boarderRadius: 9.r,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 5.sp, vertical: 10.sp),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.images.close
                        .image(width: 10.sp, height: 10.sp), // Cancel icon
                    SizedBox(width: 5.w),
                    Text(
                      "canceled".tr,
                      style: AppTextStyles
                          .kBlack12FontW700, // Canceled button text
                    ),
                  ],
                ),
              ),
            ),
          ),
        if (model.status == "cancel" ||
            model.status == "confirmed_by_user" ||
            model.status == "confirmed_by_admin")
          SizedBox(width: 5.w),

        if (model.status == "pending")
          // Reserve button
          Flexible(
            child: CustomButton(
              onTap: () => BlocProvider.of<ReservationCubit>(context)
                  .confirmBooking(model.id), // Reserve button tap event
              // color: ColorName.verylightblue, // Light blue color for reserve
              color: ColorName.verylightgreen,
              boarderRadius: 9.r,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.sp, vertical: 8.sp),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.scale(
                      scale: AppScreenUtils.isTablet ? 2.3 : 1.5,
                      child: Assets.images.reserve.svg(),
                    ), // Reserve icon
                    SizedBox(width: 12.sp),
                    Text(
                      "Reserve".tr,
                      softWrap: true,
                      style:
                          AppTextStyles.kBlack12FontW700, // Reserve button text
                    ),
                  ],
                ),
              ),
            ),
          ),
        if (model.status == "pending") SizedBox(width: 5.w),

        if (model.status == "confirmed_by_user" ||
            model.status == "confirmed_by_admin")
          Flexible(
            child: CustomButton(
              onTap: () => BlocProvider.of<ReservationCubit>(context)
                  .cancelBooking(model.id), // Canceled button tap event
              color: const Color.fromARGB(
                  255, 253, 206, 206), // Red color for canceled
              boarderRadius: 9.r,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 5.sp, vertical: 10.sp),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.images.close
                        .image(width: 10.sp, height: 10.sp), // Cancel icon
                    SizedBox(width: 5.w),
                    Text(
                      "cancel".tr,
                      style: AppTextStyles
                          .kBlack12FontW700, // Canceled button text
                    ),
                  ],
                ),
              ),
            ),
          ),
        if (model.status == "confirmed_by_user" ||
            model.status == "confirmed_by_admin")
          SizedBox(width: 5.w),

        // Track order button
        if (model.status != "cancel")
          Flexible(
            child: CustomButton(
              onTap: () {
                ///added navigation route to track order screen
                ///line edited by naira ali
                /// line edited at 15/10/2024
                context.pushNamed(TrackOrderScreen.id);
              }, // Track order button tap event
              color:
                  ColorName.lightGreyColor, // Light grey color for track order
              boarderRadius: 9.r,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 2.sp, vertical: 10.sp),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.scale(
                      scale: AppScreenUtils.isTablet ? 2.5 : 1.5,
                      child: Assets.images.trackOrder.svg(),
                    ), // Track order icon
                    SizedBox(width: 4.w),
                    Text(
                      "track_order".tr,
                      style: AppTextStyles.kBlack12FontW700, // Track order text
                    ),
                  ],
                ),
              ),
            ),
          ),
        // if (Get.locale == const Locale("ar") || model.status == "cancel")
        const Spacer(),
        if (model.status == "cancel") const Spacer()
      ],
    );
  }
}
