import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/widgets/close_icon_button.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/otp/presentation/otp_cubit/otp_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import 'otp_form.dart';

class OtpBottomSheet extends StatefulWidget {
  const OtpBottomSheet({super.key});

  @override
  State<OtpBottomSheet> createState() => _OtpBottomSheetState();
}

class _OtpBottomSheetState extends State<OtpBottomSheet> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  late OtpCubit otpCubit;
  @override
  void initState() {
    otpCubit = OtpCubit.get(context);
    super.initState();
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
                  children: [
                    CloseIconButton(),
                  ],
                ),
                Text(
                  "enter_code".tr,
                  style: AppTextStyles.kBlack24FontW700,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "${"enter_phone_instruction".tr} ${otpCubit.mobileNumber}",
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
                      onGenerateFields: (controllers, _) {
                        BlocProvider.of<OtpCubit>(context).otpFields =
                            controllers;
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
                    BlocBuilder<OtpCubit, OtpState>(
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
                            otpCubit.resendVerficationCode();
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
                const SizedBox(height: 34),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
