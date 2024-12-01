import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ReservationStatusbar extends StatefulWidget {
  const ReservationStatusbar({super.key, required this.activebutton});
  final ValueNotifier<int> activebutton;

  @override
  State<ReservationStatusbar> createState() => _ReservationStatusbarState();
}

class _ReservationStatusbarState extends State<ReservationStatusbar> {
  ValueNotifier<int> get activebutton => widget.activebutton;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: activebutton,
      builder: (context, value, child) => Container(
        margin: EdgeInsets.symmetric(horizontal: 67.sp),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9.sp),
            color: ColorName.babybluelight),
        child: Padding(
          padding: EdgeInsets.all(4.sp),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: CustomButton(
                  onTap: () => _changeActivebutton(3),
                  color: value == 3 ? Colors.white : Colors.transparent,
                  boarderRadius: 9.sp,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.sp, vertical: 5.sp),
                    child: Text(
                      "pennding".tr,
                      style: AppTextStyles.kBlack12FontW700.copyWith(
                          fontSize:
                              Get.locale == const Locale("en") ? 12.sp : null),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: CustomButton(
                  onTap: () => _changeActivebutton(1),
                  color: value == 1 ? Colors.white : Colors.transparent,
                  boarderRadius: 9.sp,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.sp, vertical: 5.sp),
                    child: Text(
                      "confirmed".tr,
                      style: AppTextStyles.kBlack12FontW700.copyWith(
                          fontSize:
                              Get.locale == const Locale("en") ? 12.sp : null),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: CustomButton(
                  onTap: () => _changeActivebutton(2),
                  color: value == 2 ? Colors.white : Colors.transparent,
                  boarderRadius: 9.sp,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.sp, vertical: 5.sp),
                    child: Text(
                      "canceled".tr,
                      style: AppTextStyles.kBlack12FontW700.copyWith(
                          fontSize:
                              Get.locale == const Locale("en") ? 12.sp : null),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _changeActivebutton(int i) {
    setState(() {
      activebutton.value = i;
    });
  }
}
