import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/features/sign_up/presentation/cubit/signup_cubit.dart';
import 'package:car_wash_mobile_app/features/terms_and_conditions/presentation/screens/terms_&_conditions_screen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

// start: edited by helmy
//Edit At Date (26/10/2024)
//added global variable to check if terms are accepted
//fix all colors and text styles

class CheckBoxAboutTermsAndConditions extends StatefulWidget {
  const CheckBoxAboutTermsAndConditions({super.key});

  @override
  State<CheckBoxAboutTermsAndConditions> createState() =>
      _CheckBoxAboutTermsAndConditionsState();
}

class _CheckBoxAboutTermsAndConditionsState
    extends State<CheckBoxAboutTermsAndConditions> {
  bool _termsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 19.h,
            width: 21.w,
            child: Container(
              color: ColorName.verylightblue,
              child: Theme(
                data: Theme.of(context).copyWith(
                  unselectedWidgetColor: ColorName.verylightblue,
                  checkboxTheme: CheckboxThemeData(
                    side: BorderSide.none,
                    fillColor: WidgetStateProperty.resolveWith<Color?>(
                      (Set<WidgetState> states) {
                        if (states.contains(WidgetState.selected)) {
                          return ColorName.black;
                        }
                        return ColorName.verylightblue;
                      },
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                ),
                child: Checkbox(
                  value: _termsAccepted,
                  onChanged: (bool? value) {
                    setState(() {
                      _termsAccepted = value ?? false;
                      SignupCubit.get(context).isTermsAccepted =
                          _termsAccepted; // Update global variable
                    });
                  },
                ),
              ),
            ),
          ),
          SizedBox(width: 15.w),
          Text('Agree to'.tr, style: AppTextStyles.kBlack12FontW400),
          SizedBox(width: 1.w),
          TextButton(
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            onPressed: () {
              if (context.mounted) {
                context.pushNamed(TermsScreen.id);
              }
            },
            child: Text('Terms and Conditions'.tr,
                style: AppTextStyles.kBlack14FontW700),
          ),
          SizedBox(width: 8.w),
        ],
      ),
    );
  }
}
