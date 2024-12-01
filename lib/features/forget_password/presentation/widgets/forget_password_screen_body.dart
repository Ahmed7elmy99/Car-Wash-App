import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/utils/app_snack_bar.dart';
import 'package:car_wash_mobile_app/core/utils/validator_utils.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_phone_text_field.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_textfield.dart';
import 'package:car_wash_mobile_app/features/forget_password/presentation/cubit/cubit/forget_password_cubit.dart';
import 'package:car_wash_mobile_app/features/forget_password/presentation/widgets/reset_password_bottom_sheet.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgetPasswordScreenBody extends StatefulWidget {
  const ForgetPasswordScreenBody({
    super.key,
  });

  @override
  State<ForgetPasswordScreenBody> createState() =>
      _ForgetPasswordScreenBodyState();
}

class _ForgetPasswordScreenBodyState extends State<ForgetPasswordScreenBody> {
  late ForgetPasswordCubit cubit;
  GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    cubit = ForgetPasswordCubit.get(context);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: key,
        child: Column(
          children: [
            Text(
              "reset_password".tr,
              style: AppTextStyles.kBlack20FontW700,
            ),
            SizedBox(height: 14.h),
            Text(
              textAlign: TextAlign.center,
              "enter_phone_reset_password".tr,
              style: AppTextStyles.kBlack12FontW400,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 28.w,
                end: 12.w,
                top: 35.h,
              ),
              child: CustomPhoneTextField(
                controller: cubit.phoneController,
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
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (Validators.passwordValidator(value) != null) {
                    return Validators.passwordValidator(value);
                  }
                  return null;
                },
                textEditingController: cubit.newPasswordController,
                label: "password".tr,
                prefixIcon: Padding(
                  padding: EdgeInsetsDirectional.only(end: 10.w),
                  child: Assets.images.passwordIcon.svg(),
                ),
                hintText: "${"password".tr}...",
                obscureText: true,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 28.w,
                end: 12.w,
                top: 18.h,
              ),
              child: CustomTextFormField(
                validator: (value) {
                  String validationError = '';
                  if (cubit.newPasswordConfirmationController.text !=
                      cubit.newPasswordController.text) {
                    validationError =
                        "Check that password and confirmed password are the same."
                            .tr;
                    return validationError;
                  } else if (Validators.passwordValidator(value) != null) {
                    return Validators.passwordValidator(value);
                  }
                  return null;
                },
                textEditingController: cubit.newPasswordConfirmationController,
                label: "confirm_password".tr,
                prefixIcon: Padding(
                  padding: EdgeInsetsDirectional.only(end: 10.w),
                  child: Assets.images.passwordIcon.svg(),
                ),
                hintText: "${"confirm_password".tr}...",
                obscureText: true,
              ),
            ),
            SizedBox(height: 65.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: CustomButton(
                boarderRadius: 10.r,
                width: 374.w,
                child: BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
                  listener: (context, state) {
                    if (state is ForgetPasswordSuccess) {
                      AppSnackBar.showSnackBar(
                        context,
                        "reset_password_code_send_success".tr,
                      );
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return BlocProvider.value(
                            value: cubit,
                            child: const ResetPasswordBottomSheet(),
                          );
                        },
                      ).whenComplete(
                        () {
                          cubit.resetPassword();
                        },
                      );
                    }
                    if (state is ResendCodeFailure) {
                      state.error.showError(context);
                    }
                    if (state is ResendCodeSuccess) {
                      AppSnackBar.showSnackBar(
                        context,
                        "reset_password_code_send_success".tr,
                      );
                    }
                    if (state is ForgetPasswordFailure) {
                      state.error.showError(context);
                    }
                  },
                  builder: (context, state) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 14.h),
                      child: state is ForgetPasswordLoading ||
                              state is ResetPasswordLoading
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
                  if (key.currentState!.validate()) {
                    cubit.confirmMobileNumber();
                    cubit.forgetPassword();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
