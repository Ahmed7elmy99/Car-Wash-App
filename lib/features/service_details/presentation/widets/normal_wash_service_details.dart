import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// start: edited by helmy (19/10/2024)
class NormalWashServiceDetails extends StatelessWidget {
  const NormalWashServiceDetails({
    super.key,
    // Created by: Nadeen Mohamed
    // Created at date: 3/11/2024
    // create imageUrl,serviceTitle and priceAfterDiscount for data and put it in the constructor
    required this.imageUrl,
    required this.serviceTitle,
    required this.servicePrice,
  });
  final String imageUrl;
  final String serviceTitle;
  final String servicePrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: AppScreenUtils.isTablet ? 1.5 : 1,
          child: Container(
            height: 80.h,
            width: 110.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                // Edited by: Nadeen Mohamed
                // Edited at date: 3/11/2024
                // Edit note: use imageUrl variable
                image: NetworkImage(imageUrl),
                // image: AssetImage(
                //   Assets.images.washPerson.path, // Image of the washing service
                // ),
                //edited to fit: BoxFit.contain by helmy(19/10/2024)
                fit: BoxFit.contain,
              ),
              borderRadius: BorderRadius.circular(8.r), // Rounded corners
            ),
          ),
        ),
        SizedBox(width: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              // Edited by: Nadeen Mohamed
              // Edited at date: 3/11/2024
              // Edit note: use ServiceTitle variable
              serviceTitle.tr,
              style: AppTextStyles.kBlack14FontW700, // Service title
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Text(
                  // Edited by: Nadeen Mohamed
                  // Edited at date: 3/11/2024
                  // Edit note: use priceAfterDiscount variable
                  '$servicePrice/', // Price part of the service
                  //Edit At Date (19/10/2024)
                  //Edit By : Abdullah Ghaith
                  //Edit Note :
                  style: AppTextStyles.kBlack20PoppinsFontW700
                      .copyWith(fontSize: 16.sp),
                ),
                Text('service_price'.tr,
                    style:
                        AppTextStyles.kBlack14FontW700), // Service price label
              ],
            ),
          ],
        ),
      ],
    );
  }
}
