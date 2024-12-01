import 'package:car_wash_mobile_app/features/settings/presentation/screens/setting_view.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 19.w),
      child: IconButton(
        onPressed: () {
          context.pushNamed(SettingView.id);
        },
        icon: SizedBox(
          width: 18.w,
          height: 18.h,
          child: Assets.images.settingsIcon.svg(), // SVG icon for settings
        ),
      ),
    );
  }
}
