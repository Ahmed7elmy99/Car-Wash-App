import 'package:flutter/material.dart';

class PaymentOptions {
  PaymentOptions({
    required this.name,
    required this.icon,
  });

  final Widget icon;
  final String name;
}

enum PaymentMethodChoices {
  onArrivalPayment,
  bankPayment,
}
