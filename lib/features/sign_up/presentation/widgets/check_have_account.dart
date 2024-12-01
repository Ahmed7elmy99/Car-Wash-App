import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/features/sign_in/presentation/screens/sign_in_screen.dart';
import 'package:car_wash_mobile_app/features/sign_up/presentation/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

// start: created by helmy
//Edit At Date (19/10/2024)

/*
edited by : waleed
edited at : 22/10/2024
edits : make navigation to Sigin screen to use push replacement
 */
class CheckHaveAccount extends StatelessWidget {
  const CheckHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Changed text to be translatable
          Text('Already have an account?'.tr,
              style: AppTextStyles.kBlack12FontW400),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(0),
            ),
            // Changed navigation to pop the context
            onPressed: () {
              //added: by helmy at date (11/11/2024)
              SignupCubit.get(context).isTermsAccepted = false;
              SignupCubit.get(context).imageFile = null;
              //end
              if (context.mounted) {
                context.pushReplacementNamed(SignInScreen.id);
              }
            },
            // Changed text to be translatable
            child: Text('Sign In'.tr, style: AppTextStyles.kBlack14FontW700),
          )
        ],
      ),
    );
  }
}
