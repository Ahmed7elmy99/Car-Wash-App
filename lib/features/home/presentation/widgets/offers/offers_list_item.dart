import 'package:car_wash_mobile_app/features/home/presentation/widgets/offers/offer_description.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/offers/offer_image.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/offers/offer_title.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'current_price.dart';
import 'old_price.dart';
import 'order_now_offers_button.dart';

/// created by :Naira Ali [27/10/2024]

class OffersListItem extends StatelessWidget {
  const OffersListItem({super.key, required this.offerData});

  final offerData;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 295.w,
      // height: 150.h,
      decoration: BoxDecoration(
          color: ColorName.mintGreenColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16.r)),
      padding: EdgeInsetsDirectional.only(end: 8.w),
      child: Row(
        children: [
          /**
           * edited images size
           * edited by : naira ali[20/10/2024]
           */
          /**
           * edited image
           * edited by : naira ali[27/10/2024]
           */
          OfferImage(image: offerData.image),
          SizedBox(width: 9.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OfferTitle(
                offerTitle: offerData.title,
                offerPercent: offerData.discount.toString(),
              ),
              SizedBox(height: 7.h),
              OfferDescription(description: offerData.description),
              SizedBox(height: 7.h),
              Row(
                children: [
                  CurrentPrice(currentPrice: "${offerData.finalPrice}"),
                  SizedBox(width: 6.w),
                  OldPrice(oldPrice: offerData.beforeDiscount),
                ],
              ),
              SizedBox(height: 10.h),
              // Edited by: Nadeen Mohamed
              // Edited at date: 29/10/2024
              // Edit note: add offersModel to orderNowOffersButton
              OrderNowOffersButton(
                offersModel: offerData,
              )
              // End
            ],
          ),
        ],
      ),
    );
  }
}
