import 'package:car_wash_mobile_app/features/otp/presentation/widgets/custom_step.dart';
import 'package:flutter/material.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper(
      {super.key, required this.activeSteps, required this.steps});
  final int activeSteps;
  final int steps;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      child: Row(
        children: List.generate(
          steps,
          (index) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: CustomStep(isActive: index < activeSteps),
              ),
            );
          },
        ).reversed.toList(),
      ),
    );
  }
}
