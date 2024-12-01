import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/utils/validator_utils.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_textfield.dart';
import 'package:car_wash_mobile_app/features/sign_up/presentation/cubit/signup_cubit.dart';
import 'package:car_wash_mobile_app/features/sign_up/presentation/widgets/custom_phone_input_sign_up.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// start: edited by helmy
//creat At Date (28/10/2024)
//added customphoneinput widget by helmy (28/10/2024)
//add controllers and validation to all textFeild
class CustomAllTextFormFeildSignUp extends StatefulWidget {
  const CustomAllTextFormFeildSignUp({super.key});

  @override
  State<CustomAllTextFormFeildSignUp> createState() =>
      _CustomAllTextFormFeildSignUpState();
}

class _CustomAllTextFormFeildSignUpState
    extends State<CustomAllTextFormFeildSignUp> {
  final bool _passwordVisible = false;
  final bool _confirmPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: SignupCubit.get(context).formstate,
      child: Column(
        children: [
          CustomTextFormField(
            validator: (value) => Validators.nameValidator(value),
            textEditingController: SignupCubit.get(context).nameController,
            label: "${'Full Name'.tr}...",
            hintText: 'Full Name'.tr,
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 11.w),
              child: Transform.scale(
                scale: AppScreenUtils.isTablet ? 1.5 : 1,
                child: Image.asset(
                  Assets.images.personIcon.path,
                  width: 16.w,
                  height: 20.h,
                ),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          // Changed label and hint text to be translatable
          CustomTextFormField(
              validator: (value) => Validators.emailValidator(value),
              textEditingController: SignupCubit.get(context).emailController,
              label: 'Email'.tr,
              hintText: 'Email'.tr,
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 11.w),
                child: Transform.scale(
                  scale: AppScreenUtils.isTablet ? 1.5 : 1,
                  child: Image.asset(
                    Assets.images.emailIcon.path,
                    width: 16.w,
                    height: 20.h,
                  ),
                ),
              )),
          SizedBox(height: 16.h),
          //added customphoneinput widget by helmy (28/10/2024)
          const CustomPhoneInput(),
          SizedBox(height: 18.h),
          // Changed label and hint text to be translatable
          CustomTextFormField(
            validator: (value) => Validators.passwordValidator(value),
            textEditingController: SignupCubit.get(context).passwordController,
            obscureText: true,
            label: "${'Password'.tr}...",
            hintText: 'Password'.tr,
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 11.w),
              child: Transform.scale(
                scale: AppScreenUtils.isTablet ? 1.5 : 1,
                child: Image.asset(
                  Assets.images.lockIcon.path,
                  width: 16.w,
                  height: 20.h,
                ),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          // Changed label and hint text to be translatable
          CustomTextFormField(
            validator: (value) => Validators.passwordValidator(value),
            textEditingController:
                SignupCubit.get(context).confirmPasswordController,
            obscureText: true,
            label: 'Confirm Password'.tr,
            hintText: 'Confirm Password'.tr,
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 11.w),
              child: Transform.scale(
                scale: AppScreenUtils.isTablet ? 1.5 : 1,
                child: Image.asset(
                  Assets.images.lockIcon.path,
                  width: 16.w,
                  height: 20.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
