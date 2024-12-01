/*
edited by : Mohamed Waleed
edited at : 16/10/2024
edits :

enter_phone text align was changed
 */

import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_phone_text_field.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_textfield.dart';
import 'package:car_wash_mobile_app/features/forget_password/presentation/screens/forget_password_screen.dart';
import 'package:car_wash_mobile_app/features/home/presentation/screens/bottom_nav_bar.dart';
// Edited by: Nadeen Mohamed
// Edited at date: 31/10/2024
// Edit note: import the correct path of sign in cubit
import 'package:car_wash_mobile_app/features/sign_in/presentation/sign_in_cubit/sign_in_cubit.dart';
import 'package:car_wash_mobile_app/features/sign_up/presentation/screen/sign_up_screen.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({
    super.key,
  });

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  GlobalKey<FormState> key = GlobalKey();
  late SignInCubit cubit;
  @override
  void initState() {
    //give value for cubit
    cubit = BlocProvider.of(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        // it will make nothing because of this exception (There is nothing to pop) at (29/10/2024)
        leading: CustomBackButton(
          onPressed: () {},
        ),
      ),
      body: Form(
        key: key,
        // added SingleChildScrollView to solve the conflict of bottom overflow at (29/10/2024)
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "sign_in".tr,
                style: AppTextStyles.kBlack20FontW700,
              ),
              SizedBox(height: 14.h),
              Text(
                textAlign: TextAlign.center,
                "enter_phone".tr,
                style: AppTextStyles.kBlack12FontW400,
              ),
              SizedBox(height: 35.h),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 28.w, end: 12.w),
                child: CustomPhoneTextField(
                  controller: cubit.mobileController,
                  onInit: (countryCode) {
                    cubit.countryCode = countryCode?.dialCode ?? "+966";
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 28.w,
                  end: 12.w,
                  top: 18.h,
                ),
                child: CustomTextFormField(
                  textEditingController: cubit.passwordController,
                  label: "password".tr,
                  prefixIcon: Padding(
                    padding: EdgeInsetsDirectional.only(end: 10.w),
                    child: Assets.images.passwordIcon.svg(),
                  ),
                  hintText: "${"password".tr}...",
                  obscureText: true,
                ),
              ),
              SizedBox(height: 32.h),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 28.w),
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: InkWell(
                    onTap: () {
                      context.push(ForgetPasswordScreen.id);
                    },
                    child: Text(
                      "forget_password".tr,
                      style: AppTextStyles.kBlack12FontW700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: CustomButton(
                  boarderRadius: 10.r,
                  width: 374.w,
                  child: BlocConsumer<SignInCubit, SignInState>(
                    listener: (context, state) {
                      if (state is SignInSuccess) {
                        context.pushReplacementNamed(BottomNavBar.id);
                      }
                      if (state is SignInFailure) {
                        state.error.showError(context);
                      }
                    },
                    builder: (context, state) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 14.h),
                        child: state is SignInLoading
                            ? Center(
                                child: SizedBox(
                                  height: 22.h,
                                  width: 22.h,
                                  child: const CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Assets.images.rightArrow.svg(
                                      width: 12.w,
                                      height: 16.h,
                                    ),
                                  ),
                                  Text(
                                    'confirm'.tr,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                      );
                    },
                  ),
                  onTap: () {
                    cubit.signIn();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 26.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${'no_account'.tr}  ",
                      style: AppTextStyles.kBlack11FontW400,
                    ),
                    InkWell(
                      onTap: () => context.pushNamed(SignupScreen.id),
                      child: Text(
                        'create_account'.tr,
                        style: AppTextStyles.kBlack13FontW700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
