import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/otp/presentation/screens/otp_screen.dart';
import 'package:car_wash_mobile_app/features/sign_up/presentation/cubit/signup_cubit.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

// start: edited by helmy
//Edit At Date (28/10/2024)
// using bloc consumer to handle state management on CustomButton
class CreateAccountButtonSignUp extends StatelessWidget {
  const CreateAccountButtonSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(listener: (context, state) {
      if (state is signUpSuccessState) {
        context.pushReplacement(OtpScreen.id);
      }
      //handle error state here by helmy
      if (state is signUpErrorState) {
        state.error.showError(context);
      }
    }, builder: (context, state) {
      return Padding(
        padding: EdgeInsets.only(right: 14.w, left: 14.w),
        child: CustomButton(
          height: 51.h,
          boarderRadius: 10.sp,
          child: state is signUpLoadingState
              ? const CircularProgressIndicator(
                  color: ColorName.white,
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Changed icon to use an SVG image
                    SizedBox(
                        height: 16.h,
                        width: 12.w,
                        child: Assets.images.rightArrow.svg()),
                    SizedBox(width: 10.w),
                    // Changed text to be translatable
                    Text('Create Account'.tr,
                        style: AppTextStyles.kWhite15FontW700),
                  ],
                ),
          onTap: () {
            SignupCubit.get(context).signUp(context);
            //edited by : waleed
            //edited at : 22/10/2024
            //edits : make it push replacement instead of push
            // context.pushReplacement(OtpScreen.id);
          },
        ),
      );
    });
  }
}
