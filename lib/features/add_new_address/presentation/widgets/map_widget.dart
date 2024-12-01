import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.sp),
      width: 337.sp,
      height: 204.sp,
      child:
          Image.asset(Assets.images.addNewAddressMap.path, fit: BoxFit.cover),
    );
  }
}
