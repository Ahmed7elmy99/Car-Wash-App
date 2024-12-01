import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Edited by: Nadeen Mohamed
// Edited at date: 15/10/2024
// This widget contains the price of service
class PriceTextWidget extends StatelessWidget {
  const PriceTextWidget({
    super.key,
    required this.textColor,
    // Edited by: Nadeen Mohamed
    // Edited at date: 10/11/2024
    // Edite note: remove required
    this.price,
  });
  final Color textColor;
  // Edited by: Nadeen Mohamed
  // Edited at date: 31/10/2024
  // Edit note: create price Variable

  // Edited by: Nadeen Mohamed
  // Edited at date: 10/11/2024
  // Edite note: make price nullable
  final String? price;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: price,
            style: AppTextStyles.kBlack20PoppinsFontW700.copyWith(
              color: textColor,
              // Edited by: Nadeen Mohamed
              // Edited at date: 20/10/2024
              // Edit note: use fontSize variable
              fontFamily: FontFamily.poppins,
            ),
          ),
          TextSpan(
            text: '/',
            style: AppTextStyles.kBlack20FontW700.copyWith(
              color: textColor,
            ),
          ),
          // Edited by: nadeen mohamed
          // Edited at date: 15/10/2024
          // Change the text
          TextSpan(
            text: 'sar.hour'.tr, // use translation by nadeen (13/10/2024)
            style: AppTextStyles.kBlack14FontW700.copyWith(
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
