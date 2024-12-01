// Edited by: Nadeen Mohamed
// Edited at date: 15/10/2024
// This widget is used to create the Container which contains
// the additional products
// Edit note: Add const keyword to the border color

// Edited by: nadeen mohamed
// Edited at date: 24/10/2024
// Edit note: remove views folder and move widgets folder in presentation folder and
// Use the correct imports
import 'package:car_wash_mobile_app/core/models/all_services_model/all_services_model.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/additional_product_row.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdditionalProductsWidget extends StatelessWidget {
  // Edited by: Nadeen Mohamed
  // Edited at date: 5/11/2024
  // Edit note: Create object from AllServicesModel and put on the constructor
  const AdditionalProductsWidget({super.key,required this.service});
  final AllServicesModel service;
  @override
  Widget build(BuildContext context) {
    // Edited By: Nadeen Mohamed,
    // Edited at date: 29/10/2024
    // Edit Note: Use BlocBuilder to check on states
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: ColorName.black2.withOpacity(0.05))),
      // Edited by: Nadeen Mohamed
      // Edited at date: 27/10/2024
      /*
           Edits: 
            - use ListView.separated to show divider only if it's not the last item
           */
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: service.additionalProducts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: AdditionalProductRow(
              product: service.additionalProducts[index]),
          );
        },
        separatorBuilder: (context, index) {
          // Only show divider if it's not the last item
          if (index < service.additionalProducts.length - 1) {
            return Divider(
              indent: 12.w,
              endIndent: 12.w,
              thickness: 1.h,
              color: ColorName.black2.withOpacity(0.05),
            );
          }
          return const SizedBox.shrink(); // Empty widget for last item
        },
      ),
    );
  }
}
