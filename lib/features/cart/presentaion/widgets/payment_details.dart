import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/cubits/add_cupon_cubit/cupon_cubit.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/cubits/show_cart_items_cubit/show_cart_items_cubit.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PaymentDetails extends StatelessWidget {
  static const String id = '/PaymentDetails';
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowCartItemsCubit, ShowCartItemsState>(
      builder: (context, cartState) {
        // Access the total price from ShowCartItemsCubit and safely cast to double
        final totalPrice = cartState is ShowCartItemsSuccess
            ? (cartState.totalPrice?.toDouble() ?? 0.0) // Convert to double if not null
            : 0.0; // Default to 0 if the state is not success

        return BlocConsumer<CuponCubit, CuponState>(
          listener: (context, state) {
            if (state is cuponStateErrorState) {
              state.error.showError(context);
            }
          },
          builder: (context, state) {
            return SizedBox(
              height: 48.h,
              width: 335.w,
              child: DottedBorder(
                color: ColorName.green,
                dashPattern: const [6, 3],
                borderType: BorderType.RRect,
                radius: Radius.circular(12.r),
                child: Form(
                  key: CuponCubit.get(context).formState,
                  child: Padding(
                    padding: EdgeInsets.only(right: 21.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'please enter promo code'.tr;
                              }
                              return null;
                            },
                            controller: CuponCubit.get(context).cuponNumber,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'promo_code_number'.tr,
                              hintStyle: AppTextStyles.kBlack12FontW300,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                      CustomButton(
                            boarderRadius: 8.sp,
                            color: ColorName.darkBrown,
                            height: AppScreenUtils.isTablet ? 45.h : 37.h,
                            width: AppScreenUtils.isTablet ? 60.w : 80.w,
                            onTap: () {
                     CuponCubit.get(context).applyCupon(totalPrice);
                            },
                            child: state is cuponStateLoadingState
              ? const CircularProgressIndicator(color: ColorName.white,): Text(
                              'apply'.tr,
                              style: AppTextStyles.kWhite12FontW700,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
