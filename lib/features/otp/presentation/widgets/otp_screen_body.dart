/*
 * Created by: Mohamed Waleed
 * Created at: 19/10/2024
 *
 * This widget represents the body of the OTP (One-Time Password) screen in the application.
 * It contains UI elements for entering a phone number, displaying instructions, and 
 * navigating through the OTP verification process.
 * 
 * The widget includes the following features:
 * - A title indicating the user should enter their phone number.
 * - An icon to close the OTP screen.
 * - A custom stepper widget that visually represents the current step in the OTP process.
 * - Instructional text guiding the user to enter their phone number.
 * - A custom phone number text field for user input.
 * - A confirmation button that, when tapped, displays a bottom sheet for OTP verification.
 * 
 * The `OtpScreenBody` utilizes:
 * - Flutter's `Column` widget to arrange child elements vertically.
 * - `GetX` for internationalization (i18n) by using the `.tr` extension on strings.
 * - Custom widgets such as `CustomStepper`, `CustomPhoneTextField`, and `CustomButton`
 *   to maintain consistent design and functionality throughout the application.
 * 
 * Example usage:
 * ```
 * Widget build(BuildContext context) {
 *   return Scaffold(
 *     appBar: AppBar(title: Text('OTP Verification')),
 *     body: const OtpScreenBody(),
 *   );
 * }
 * ```
 */

import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/widgets/close_icon_button.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_phone_text_field.dart';
import 'package:car_wash_mobile_app/features/home/presentation/screens/bottom_nav_bar.dart';
import 'package:car_wash_mobile_app/features/otp/presentation/otp_cubit/otp_cubit.dart';
import 'package:car_wash_mobile_app/features/otp/presentation/widgets/custom_stepper.dart';
import 'package:car_wash_mobile_app/features/otp/presentation/widgets/otp_bottom_sheet.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class OtpScreenBody extends StatefulWidget {
  const OtpScreenBody({
    super.key,
  });

  @override
  State<OtpScreenBody> createState() => _OtpScreenBodyState();
}

class _OtpScreenBodyState extends State<OtpScreenBody> {
  GlobalKey<FormState> key = GlobalKey();
  late OtpCubit otpCubit;
  @override
  void initState() {
    otpCubit = BlocProvider.of<OtpCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OtpCubit, OtpState>(
      listener: (context, state) {
        if (state is OtpSuccess) {
          context.pushReplacement(BottomNavBar.id);
        } else if (state is OtpFailure) {
          state.error.showError(context);
        }
      },
      builder: (context, state) {
        return Form(
          key: key,
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Text(
                    'phone_number'.tr,
                    style: AppTextStyles.kBlack20FontW700,
                  ),
                  const Spacer(),
                  const CloseIconButton()
                ],
              ),
              SizedBox(height: 14.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: const CustomStepper(steps: 4, activeSteps: 2),
              ),
              SizedBox(height: 35.h),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 24.w),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'phone_number'.tr,
                          style: AppTextStyles.kBlack25FontW400,
                        ),
                        Text(
                          "enter_phone_instruction".tr,
                          style: AppTextStyles.kBlack13FontW400,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 65.h),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 28.w, end: 12.w),
                child: CustomPhoneTextField(
                  controller: otpCubit.mobileController,
                  onInit: (countryCode) {
                    otpCubit.countryCode = countryCode?.dialCode ?? "+966";
                  },
                ),
              ),
              SizedBox(height: 65.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: CustomButton(
                  boarderRadius: 10.r,
                  width: 374.w,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    child: state is OtpLoading
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
                  ),
                  onTap: () {
                    if (key.currentState!.validate()) {
                      otpCubit.confirmMobileNumber();
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.white,
                        builder: (context) {
                          return BlocProvider.value(
                            value: otpCubit,
                            child: Builder(
                              builder: (context) {
                                return const OtpBottomSheet();
                              },
                            ),
                          );
                        },
                      ).whenComplete(
                        () {
                          otpCubit.verifyUser();
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
