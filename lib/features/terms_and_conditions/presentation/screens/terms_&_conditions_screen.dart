import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/features/terms_and_conditions/presentation/cubit/terms_and_conditions_cubit.dart';
import 'package:car_wash_mobile_app/features/terms_and_conditions/presentation/widgets/terms_and_conditions_texts.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// start: Edited by helmy
//Edit At Date (19/10/2024)
class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});
  static const String id = "/termsAndConditionsScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, leading: const CustomBackButton()),
      body: BlocProvider(
        create: (context) => TermsAndConditionsCubit()..getTermsAndConditions(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.h),
                Image.asset(
                  Assets.images.logo.path,
                  height: 179.h,
                  width: 216.w,
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Terms".tr,
                        style: AppTextStyles.kMainGreenColor25FontW700),
                    Text("And Conditions".tr,
                        style: AppTextStyles.kBlack25FontW700),
                  ],
                ),
                SizedBox(height: 30.h),
                const TermsAndConditionsTexts()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
