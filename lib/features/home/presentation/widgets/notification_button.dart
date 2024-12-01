import 'package:car_wash_mobile_app/features/home/presentation/widgets/notification_cart_custom_container.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        NotificationCartCustomContainer(
          onTap: onTap,
          // Edited by: Nadeen Mohamed
          // Edited at date: 7/11/2024
          // Edit note: use the correct path of svg image
          color: ColorName.darkGreyColor,
          /**
           * Edited by Naira Ali [21/11/2024]
           * edited icon path
           */
          iconPath: Assets.images.homeNotificationsIcon.path,
        ),
        CircleAvatar(
          radius: 7.r,
          backgroundColor: ColorName.redColor,
        ),
      ],
    );
  }
}