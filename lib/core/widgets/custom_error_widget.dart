import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorHandler});
  final ApiErrorHandler errorHandler;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
