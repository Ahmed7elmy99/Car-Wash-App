import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class CustomStep extends StatelessWidget {
  const CustomStep({
    super.key,
    required this.isActive,
  });

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      decoration: BoxDecoration(
        color: isActive
            ? ColorName.green
            : ColorName.grey.withOpacity(
                0.03,
              ),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
