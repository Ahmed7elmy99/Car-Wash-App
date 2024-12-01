import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/booking/detailed_booking_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Created by: Amr Elnbawy
/// Edited by: Amr Elnbawy
/// Created at Date: 14-oct-2024
/// [ReservationItemTextDetails] defines the widget that displays the detailed information
/// for the reservation such as service address, price, date, and time.
/// The details are structured using a [RichText] widget with multiple text styles.
class ReservationItemTextDetails extends StatelessWidget {
  const ReservationItemTextDetails({super.key, required this.model});
  final DetailedBookingData model;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.serviceName,
          style: AppTextStyles.blackText12FontW700, // Service address text
        ),
        const SizedBox(height: 12), // Space between lines

        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: model.servicePrice.toString(), // Price amount
                  style: AppTextStyles.black12FontPoppinsW700),
              TextSpan(
                  text: r"/",
                  style: AppTextStyles.kBlack12FontW700), // Currency
              TextSpan(
                  text: "sar.hour".tr,
                  style: AppTextStyles.kBlack10FontW400), // Price unit
            ],
          ),
        ),
        const SizedBox(height: 12), // Space between lines
        Text(
          model.implementationDate, // Reservation date and time
          textDirection: TextDirection.ltr,
          style: AppTextStyles.kInterDarkBlueGrey10Font400,
        ),
      ],
    );
  }
}
