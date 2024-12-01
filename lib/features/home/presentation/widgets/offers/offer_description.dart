import 'package:car_wash_mobile_app/features/home/presentation/widgets/offers/custom_widget_factory.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../../../core/constants/app_text_styles.dart';

/// created by :Naira Ali [27/10/2024]

class OfferDescription extends StatelessWidget {
  const OfferDescription({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240.w,
      child: HtmlWidget(
        description, // HTML content
        textStyle: AppTextStyles.kGray60Opacity10FontW400,
        factoryBuilder: () => CustomTruncationWidgetFactory(maxLines: 1),
      ),
    );
  }
}