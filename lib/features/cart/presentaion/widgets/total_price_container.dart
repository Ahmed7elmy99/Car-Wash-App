import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/cubits/add_cupon_cubit/cupon_cubit.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/cubits/show_cart_items_cubit/show_cart_items_cubit.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TotalPriceContainer extends StatelessWidget {
  const TotalPriceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowCartItemsCubit, ShowCartItemsState>(
      builder: (context, stateCart) {
        // Check if the state is success and if the total price is available
        if (stateCart is ShowCartItemsSuccess) {
          return BlocConsumer<CuponCubit, CuponState>(
            listener: (context, state) {
              // Handle any actions you need after the state change
              if (state is cuponStateErrorState) {
                // Handle error state if needed
              }
            },
            builder: (context, state) {
              final cuponCubit = CuponCubit.get(context);

              // If the coupon has been applied and there is a discounted price
              num? discountedPrice = state is cuponStateSuccessState
                  ? state.discountedPrice
                  : stateCart.totalPrice;

              return Container(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                width: 335.w,
                decoration: BoxDecoration(
                  color: ColorName.lightMintGreenColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.w, vertical: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'service_value'.tr,
                            style: AppTextStyles.kBlack12FontW400,
                          ),
                          Text(
                            '${stateCart.totalPrice} ${'rial'.tr}',
                            style: AppTextStyles.kBlack12InterFontW500.copyWith(
                              color: ColorName.black2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.w, vertical: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'total_amount'.tr,
                            style: AppTextStyles.kBlack12FontW700,
                          ),
                          Text(
                            '$discountedPrice ${'rial'.tr}',
                            style: AppTextStyles.kBlack12InterFontW500.copyWith(
                              fontWeight: FontWeight.w800,
                              color: ColorName.black2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        } else {
          return Container();
        }
      },
    );
  }
}
