import 'package:car_wash_mobile_app/core/models/all_services_model/all_services_model.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/services/add_to_cart_button.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/services/all_services_image.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/services/service_name.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/services/service_price_section.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/screens/order_service_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../../../../gen/colors.gen.dart';

/// creted by Naira Ali
/// [27/10/2024]
class AllServicesListItem extends StatelessWidget {
  const AllServicesListItem({super.key, required this.service});
  // Edited by Nadeen Mohamed
  // Edited at date: 5/11/2024
  // Edit note: declare service as ServiceModel
  final AllServicesModel service;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 171.w,
      // height: 224.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: ColorName.grey.withOpacity(0.1))),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
                horizontal: 5.w, vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /**
                 * edited image size
                 * edited by : naira ali[20/10/2024]
                 */
                AllServicesImage(image: service.image),
                SizedBox(height: 8.h),
                ServiceName(name: service.name),
                SizedBox(height: 10.h),
                ServicePriceSection(price: service.price),
              ],
            ),
          ),
          const Spacer(),
          //edited by omnia mohamed [3/11/2024]

          AddToCartButton(
            // created by: Nadeen Mohamed
            // created at date: 5/11/2024
            // Navigate to the order service screen and send service
            onTap: () {
              context.pushNamed(
                OrderServiceScreen.id,
                extra: service,
            );
            },
            text: "confirm_booking".tr,
            showImage: false,
          ),
        ],
      ),
    );
  }
}
