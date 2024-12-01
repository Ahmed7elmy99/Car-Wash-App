import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/widgets/close_icon_button.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/forget_password/presentation/cubit/cubit/forget_password_cubit.dart';
import 'package:car_wash_mobile_app/features/otp/presentation/widgets/otp_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordBottomSheet extends StatefulWidget {
  const ResetPasswordBottomSheet({super.key});

  @override
  State<ResetPasswordBottomSheet> createState() =>
      _ResetPasswordBottomSheetState();
}

class _ResetPasswordBottomSheetState extends State<ResetPasswordBottomSheet> {
  late ForgetPasswordCubit cubit;
  GlobalKey<FormState> key = GlobalKey();
  @override
  void initState() {
    super.initState();
    cubit = BlocProvider.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SizedBox(
          width: AppScreenUtils.w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [CloseIconButton()],
                ),
                Text(
                  "enter_code".tr,
                  style: AppTextStyles.kBlack24FontW700,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "${"enter_phone_instruction".tr} ${cubit.phoneNumber}",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.kBlack14FontW400,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 21.w,
                    left: 20.w,
                    top: 30.h,
                    bottom: 35.h,
                  ),
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: OtpForm(
                      onGenerateFields: (controllers, focusNodes) {
                        cubit.fieldsControllers = controllers;
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "resend_code".tr,
                      style: AppTextStyles
                          .kBlack11FontW400, // Style for the second part
                    ),
                    BlocBuilder<ForgetPasswordCubit, ForgetPasswordState>(
                      builder: (context, state) {
                        if (state is ResendCodeLoading) {
                          return SizedBox(
                            height: 15.w,
                            width: 15.w,
                            child: const CircularProgressIndicator(
                              color: Colors.black,
                            ),
                          );
                        }
                        return InkWell(
                          onTap: () {
                            cubit.resendVerficationCode();
                          },
                          child: Text(
                            "  ${"resend".tr}",
                            style: AppTextStyles.kBlack12FontW700,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 44.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: CustomButton(
                    boarderRadius: 10.r,
                    width: 374.w,
                    title: "confirm_continue".tr,
                    onTap: () {
                      if (key.currentState!.validate()) {
                        context.pop();
                      }
                    },
                  ),
                ),
                SizedBox(height: 34.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
