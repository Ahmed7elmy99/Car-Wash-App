import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Created by: Nadeen Mohamed
// Created at date: 20/10/2024
// This widget is for the first row in the cart screen
class CartAndCartContentsRow extends StatelessWidget {
  const CartAndCartContentsRow({super.key, required this.numberOfItems});
  final String numberOfItems;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'cart'.tr,
          style: AppTextStyles.kBlack15FontW700,
        ),
        const Spacer(),
        Text('${'cart_contents'.tr}($numberOfItems)',
            style: AppTextStyles.kBlack16FontW400),
      ],
    );
  }
}
