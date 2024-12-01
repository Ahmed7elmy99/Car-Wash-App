import 'dart:developer';

import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/core/models/booking/detailed_booking_data.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/addresses/presentation/screens/addresses_screen.dart';
import 'package:car_wash_mobile_app/features/choose_address/presentation/choose_address_screen.dart';
import 'package:car_wash_mobile_app/features/payment/presentation/screens/payment_screen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_text_styles.dart';

// start: edited by helmy
//Edit At Date (21/10/2024)
//fix all colors and text styles
class PaymentFollowUp extends StatelessWidget {
  const PaymentFollowUp({
    super.key,
    required this.servicePrice,
    this.selectedAddressModel,
  });
  final String servicePrice;

  final selectedAddressModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 91.h,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          decoration: BoxDecoration(
            color: ColorName.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButton(
                  height: 51.h,
                  width: 195.w,
                  boarderRadius: 10.sp,
                  onTap: () {
                    print("Navigating with address: $selectedAddressModel");
                    context.pushNamed(
                      ChooseAddressScreen.id,
                      extra: (AddressModel address) {
                        log(address.toString());
                        context.pushReplacement(PaymentScreen.id);
                      },
                    );
                  },
                  child: Text(
                    'confirm_address'.tr,
                    style: AppTextStyles.kWhite15FontW700,
                  )),
              // Spacer(),
              Text(
                servicePrice,
                style: AppTextStyles.kWhite15InterFontW600,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
