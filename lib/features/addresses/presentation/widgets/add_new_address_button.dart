import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/add_new_address/presentation/screens/add_new_address_screen.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

//  created by: Ghaith
//  create Date (21/10/2024)
class AddNewAddressButton extends StatelessWidget {
  const AddNewAddressButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      boarderRadius: 10,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 14.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          textDirection: Get.locale == const Locale('en')
              ? TextDirection.rtl
              : TextDirection.ltr,
          children: [
            Text(
              "add_new_address".tr,
              style: AppTextStyles.kWhite15FontW700,
            ),
            SizedBox(width: 10.sp),
            Image.asset(
              Assets.images.add.path,
              width: 16.sp,
              height: 16.sp,
            ),
          ],
        ),
      ),
      onTap: () {
        context.pushReplacementNamed(AddNewAddressScreen.id);
        
      },
    );
  }
}
