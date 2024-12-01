import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../gen/colors.gen.dart';

class NotificationCartCustomContainer extends StatelessWidget {
  const NotificationCartCustomContainer({
    super.key,
    required this.onTap,
    required this.iconPath,
    required this.color,
  });

  final VoidCallback onTap;
  final String iconPath;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: 33.w,
          height: 38.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: ColorName.grey.withOpacity(0.1),
              )),
          child: Container(
            width: 18.w,
            height: 18.h,
            padding:
                EdgeInsetsDirectional.symmetric(vertical: 8.h, horizontal: 8.w),
            child: SvgPicture.asset(
              iconPath,
              color: color,
              fit: BoxFit.fill,
            ),
          )),
    );
  }
}
