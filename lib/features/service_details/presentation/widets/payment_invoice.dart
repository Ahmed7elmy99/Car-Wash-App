import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';

import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// start: edited by helmy
//Edit At Date (4/11/2024)
// get PaymentInvoice data from cuponCubit and api and handle logic
//fix all colors and text styles
class PaymentInvoice extends StatelessWidget {
  // Edited by: Nadeen Mohamed
  // Edited at date: 11/11/2024
  // Edite note: Add new parameters for totalPrice, serviceValue
  const PaymentInvoice({super.key, required this.totalPrice, required this.serviceValue});
  final String totalPrice;
  final String serviceValue;

  @override
  Widget build(BuildContext context) {
    // Edited by: Nadeen Mohamed
    // Edited at date: 11/11/2024
    // Edite note: comment unused code
    return Container(
      //commented height by helmy (19/10/2024)
      //  height: 161.h,
      width: 335.w,
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
        color: ColorName.lightMintGreenColor,
        // Light blue background similar to the image
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _paymentSummaryRow('service_value'.tr, serviceValue),
          // SizedBox(
          //   height: 10.h,
          // ),
          //  _paymentSummaryRow('additional_value'.tr, 'price_with_currency2'.tr),
          // SizedBox(
          //   height: 10.h,
          // ),
          // if (CuponCubit.get(context).cuponModel != null &&CuponCubit.get(context).cuponModel!.discountValue != null)
          //  _paymentSummaryRow('discount'.tr, getDiscountValue(context)),
          SizedBox(
            height: 12.h,
          ),
          // if (CuponCubit.get(context).cuponModel != null &&CuponCubit.get(context).cuponModel!.discountValue != null)
          const Divider(),
          SizedBox(
            height: 14.5.h,
          ),
          //  if (CuponCubit.get(context).cuponModel != null &&CuponCubit.get(context).cuponModel!.discountValue != null)
          _paymentSummaryRow('total_amount'.tr, totalPrice,
              isBold: true),
        ],
      ),
    );
  }

  Widget _paymentSummaryRow(String title, String amount,
      {bool isBold = false}) {
    return Row(
      children: [
        Text(title,
            style: isBold
                ? AppTextStyles.kBlack12FontW700
                : AppTextStyles.kGrey12FontW400),
        const Spacer(),
        // Edited by: Nadeen Mohamed
        // Edited at date: 21/11/2024
        // Edite note: add rial to the amount
        Text(amount + "rial".tr,
            style: isBold
                ? AppTextStyles.kBlack15InterFontW600
                : AppTextStyles.kBlack15InterFontW500),
      ],
    );
  }

// Edited by: Nadeen Mohamed
// Edited at date: 11/11/2024
// Edite note: Comment the code for copun
  // String getDiscountValue(BuildContext context) {
  //   if (CuponCubit.get(context).cuponModel!.discountType == "ratio") {
  //     return "${CuponCubit.get(context).cuponModel!.discountValue}%";
  //   } else {
  //     return "${CuponCubit.get(context).cuponModel!.discountValue}";
  //   }
  // }

  // String getTotalAmount(BuildContext context) {
  //   if (CuponCubit.get(context).cuponModel!.discountType == "ratio") {
  //     String totalAmount = (double.parse(price) -
  //             (double.parse(price) *
  //                     CuponCubit.get(context).cuponModel!.discountValue!) /
  //                 100)
  //         .toInt()
  //         .toString();

  //     return totalAmount;
  //   } else {
  //     String totalAmount = (double.parse(price) -
  //             double.parse(CuponCubit.get(context).cuponModel!.discountValue!))
  //         .toInt()
  //         .toString();
  //     return totalAmount;
  //   }
  // }
}