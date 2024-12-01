import 'package:car_wash_mobile_app/core/shared_pref/shared_pref.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationSwitchButton extends StatefulWidget {
  const NotificationSwitchButton({super.key});

  @override
  State<NotificationSwitchButton> createState() =>
      _NotificationSwitchButtonState();
}

class _NotificationSwitchButtonState extends State<NotificationSwitchButton> {
  bool isNotificationsEnabled = false;

  @override
  void initState() {
    super.initState();
    loadNotificationPreference();
  }

  Future<void> loadNotificationPreference() async {
    bool isEnabled = SharedPref.instance.loadNotificationPreference();
    setState(() {
      isNotificationsEnabled = isEnabled;
      print(isEnabled);
    });
  }

  void onNotificationToggle(bool isEnabled) async {
    // await FireBaseApi.setNotificationsEnabled(isEnabled);
    await SharedPref.instance.saveNotificationPreference(isEnabled);
    setState(() {
      isNotificationsEnabled = isEnabled;
      print(isEnabled);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SizedBox(
        width: 41.w,
        height: 41.h,
        child: FittedBox(
          fit: BoxFit.fill,
          child: Switch(
            value: isNotificationsEnabled,
            activeColor: ColorName.mintGreen,
            activeTrackColor: const Color(0xFFEDFFF0),
            inactiveTrackColor: const Color(0xFFEDFFF0),
            trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
            onChanged: (bool newValue) async {
              setState(() {
                onNotificationToggle(newValue);
              });
            },
          ),
        ),
      ),
    );
  }
}
