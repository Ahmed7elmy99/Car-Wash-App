import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class CustomCallingButton extends StatefulWidget {
  const CustomCallingButton({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  State<CustomCallingButton> createState() => _CustomCallingButtonState();
}

class _CustomCallingButtonState extends State<CustomCallingButton> {
  /// created by naira ali
  /// created at 15/10/2024

  ///using url_launcher package for mobile phone number calling
  _callEmployee(String phone) async {
    try {
      Uri uri = Uri.parse('tel:$phone');
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _callEmployee(widget.phoneNumber);
      },
      child: Container(
        width: 43.38.w,
        height: 43.38.h,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorName.white.withOpacity(0.2),
            image: DecorationImage(
                image: AssetImage(
                  Assets.images.callWhiteIcon.path,
                ),
                /**
                 * edited by Naira Ali[11/10/2024]
                 * changed the scale to manage image size
                 */
                scale: 0.9.h)),
      ),
    );
  }
}
