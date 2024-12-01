import 'package:flutter/material.dart';

import '../../../../../core/constants/app_text_styles.dart';

/// creted by Naira Ali
/// [27/10/2024]

class ServiceName extends StatelessWidget {
  const ServiceName({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: AppTextStyles.kGray15FontW700,
    );
  }
}
