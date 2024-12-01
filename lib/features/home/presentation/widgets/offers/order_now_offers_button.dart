import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/offers/offers_model.dart';
import 'package:car_wash_mobile_app/features/offer_details/presentation/screens/offer_details_screen.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/screens/order_service_screen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

/// created by :Naira Ali [27/10/2024]

class OrderNowOffersButton extends StatefulWidget {
  const OrderNowOffersButton({super.key, required this.offersModel});
  // Edited by: Nadeen Mohamed
  // Edited at date: 29/10/2024
  // Edit note: create offersModel object
  final OffersModel offersModel;

  @override
  State<OrderNowOffersButton> createState() => _OrderNowOffersButtonState();
}

class _OrderNowOffersButtonState extends State<OrderNowOffersButton> {
  @override
  Widget build(BuildContext context) {
    // Edited by: Nadeen Mohamed
    // Edited at date: 29/10/2024
    // Edit note: get offersModel from widget

    final offersModel = widget.offersModel;
    return InkWell(
      //  Created By : Abdullah Ghaith
      //  Edited By : Abdullah Ghaith
      //  Edit Date : 14/10/2024
      onTap: () async {
        /**
         * edited by Naira Ali [21/11/2024]
         * added navigation line
         */
        context.pushNamed(OfferDetailsScreen.id, extra: offersModel);
      },
      child: Container(
        // width: 64.w,
        // height: 23.h,
        padding:
            EdgeInsetsDirectional.symmetric(vertical: 5.h, horizontal: 5.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: ColorName.greenColor),
        ),
        child: Center(
          child: Text(
            "order_now".tr,
            style: AppTextStyles.greenText10FontW700,
          ),
        ),
      ),
    );
  }
}
