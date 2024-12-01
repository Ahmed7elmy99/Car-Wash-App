// Edited by: nadeen mohamed
// Edited at date: 24/10/2024
// Edit note: remove views folder and move widgets folder in presentation folder and
// Use the correct imports
import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/price_text_widget.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// created by: Nadeen Mohamed
// created at date: 15/10/2024
// This file contains service title , price per hour and communication containers
class ServiceTitleAndCommunicationContainers extends StatelessWidget {
  const ServiceTitleAndCommunicationContainers({
    super.key,
    required this.serviceTitle,
      // Edited by: Nadeen Mohamed
  // Edited at date: 10/11/2024
  // Edite note: remove required
    this.priceAfterDiscount,
    required this.priceBeforeDiscount,
  });
  // Edited by: Nadeen Mohamed at 29/10/2024
  // Edit note: create String variable
  final String serviceTitle;
  // Edited by: Nadeen Mohamed
  // Edited at date: 10/11/2024
  // Edite note: make priceAfterDiscount
  final String? priceAfterDiscount;
  final String priceBeforeDiscount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Edited by: nadeen mohamed
      // Edited at date: 17/10/2024
      // Edit note: Use screenUtil
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            // created by: Nadeen Mohamed
            // created at date: 3/11/2024
            // use crossAxisAlignment
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                // Edited by: nadeen mohamed
                // Edited at date: 3/11/2024
                // user tr for translation
                serviceTitle.tr, // use translation by nadeen (13/10/2024)
                style: AppTextStyles.kBlack20FontW700,
              ),
              // Edited by: Nadeen
              // Edited at date: 15/10/2024
              // use textColor variable to style text
              Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Text(
                        // Edited by: Nadeen Mohamed
                        // Edited at date: 31/10/2024
                        // Edit note: display priceBeforeDiscount
                        priceBeforeDiscount,
                        style: AppTextStyles.kWhite13InterFontW400.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        width: 55.w, // Adjust width as needed
                        height: 1.h, // Thickness of the line
                        color: Colors.grey, // Color of the line
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  PriceTextWidget(
                    textColor: ColorName.black,
                    price: priceAfterDiscount,
                  ),
                ],
              ),
            ],
          ),
          // Edited by: Nadeen Mohamed
          // Edited at date: 31/10/2024
          //  Edit note: comment communication containers
          //     Row(
          //       children: [
          //         CommunicationContainer(
          //           imagePath: Assets.images.message.path,
          //         ),
          //         SizedBox(
          //           width: 4.w,
          //         ),
          //         CommunicationContainer(
          //           imagePath: Assets.images.call.path,
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
