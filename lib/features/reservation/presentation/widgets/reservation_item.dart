import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_wash_mobile_app/core/models/booking/detailed_booking_data.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/screens/order_service_screen.dart';
import 'package:car_wash_mobile_app/features/reservation/presentation/widgets/reservation_item_buttons.dart';
import 'package:car_wash_mobile_app/features/reservation/presentation/widgets/reservation_item_text_details.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

/// Created by: Amr Elnbawy
/// Created at Date: 12-oct-2024
/// Edit by: Amr Elnbawy
/// Edit at Date: 22-oct-2024
/// [ReservationItem] is a custom widget that represents an individual reservation.
/// It displays various details such as an image, description, and buttons for actions like
/// confirming, canceling, reserving, or tracking an order. It is flexible to handle both
/// active and inactive reservation states.
class ReservationItem extends StatelessWidget {
  const ReservationItem({super.key, required this.model});

  final DetailedBookingData model;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 150.sp,
      // width: 345.sp,
      padding: EdgeInsetsDirectional.only(
          top: 6.sp, start: 15.sp), // Handles locale-specific padding
      margin: EdgeInsets.all(10.sp), // Adds margin around the item
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(6.sp), // Rounded corners for the container
        border: Border.all(
            width: 1.sp,
            color: ColorName.grey.withOpacity(.10)), // Border styling
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 9.sp, bottom: 6.sp), // Padding for the inner content
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container for the reservation image
                Container(
                    width: 85.sp,
                    height: 65.sp,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp)),
                    clipBehavior: Clip.hardEdge,
                    child: CachedNetworkImage(imageUrl: model.serviceImage)),
                SizedBox(width: 12.sp),
                // Widget for displaying the details of the reservation
                ReservationItemTextDetails(model: model),
                const Spacer(),
                // Edit icon at the end of the row
                if (model.status != "cancel")
                  Padding(
                    padding: EdgeInsetsDirectional.only(end: 13.sp),
                    child: InkWell(
                      onTap: () => context.pushNamed(OrderServiceScreen.id),
                      child: Assets.images.editIconBlack
                          .svg(width: 12.sp, height: 12.sp),
                    ), // Edit icon SVG
                  ),
              ],
            ),
          ),
          SizedBox(width: 14.sp),
          // Row of buttons for various actions
          Padding(
            padding: EdgeInsets.only(top: 6.sp, bottom: 10.sp),
            child: ReservationItemButtons(model: model),
          ),
        ],
      ),
    );
  }
}
