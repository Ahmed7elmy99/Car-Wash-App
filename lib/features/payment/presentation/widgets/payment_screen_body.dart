import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/screens/success_message_screen.dart';
import 'package:car_wash_mobile_app/features/payment/presentation/payment_cubit/payment_cubit.dart';
import 'package:car_wash_mobile_app/features/payment/presentation/widgets/payment_options_list.dart';
import 'package:car_wash_mobile_app/features/payment/presentation/widgets/payment_screen_shimmer.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class PaymentScreenBody extends StatefulWidget {
  const PaymentScreenBody({
    super.key,
  });

  @override
  State<PaymentScreenBody> createState() => _PaymentScreenBodyState();
}

class _PaymentScreenBodyState extends State<PaymentScreenBody> {
  @override
  void initState() {
    super.initState();
    PaymentCubit.get(context).initPayment();
  }

  @override
  Widget build(BuildContext context) {
    PaymentCubit cubit = BlocProvider.of<PaymentCubit>(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 28.w,
              bottom: 27.h,
              top: 10.h,
            ),
            child: Text(
              "bank_transfer".tr,
              style: AppTextStyles.kBlack15FontW700,
            ),
          ),
          BlocBuilder<PaymentCubit, PaymentState>(
            builder: (context, state) {
              return PaymentOptionsList(
                key: const ValueKey("payment_options"),
                paymentOptionsList: cubit.paymentOptionsList,
              );
            },
          ),
          SizedBox(height: 22.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
            child: CustomButton(
              boarderRadius: 10.r,
              child: BlocConsumer<PaymentCubit, PaymentState>(
                listener: (context, state) {
                  if (state is PaymentSuccess) {
                    context.pushReplacementNamed(SuccessMessageScreen.id);
                  }
                  if (state is PaymentFailure) {
                    state.handler.showError(context);
                  }
                },
                builder: (context, state) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    child: state is PaymentLoading
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
                cubit.executePayment(context);
                //Edit By : Abdullah Ghaith
                //Edit Date : 14/10/2024
                //Edit Note : removed the navigation here

                // Edited by: Nadeen Mohamed
                // Edited at date: 20/10/2024
                // Edit note: Navigate to success screen message

                // GoRouter.of(context).pushNamed(SuccessMessageScreen.id);
              },
            ),
          ),
        ],
      ),
    );
  }
}
