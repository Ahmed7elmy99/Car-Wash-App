import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/cart/cart_model.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/cubits/remove_from_cart_cubit/remove_from_cart_cubit.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/widgets/price_widget.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.item});
  final Datum item; // Use Datum type directly for individual items

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RemoveFromCartCubit, RemoveFromCartState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Container(
            width: 342.w,
            height: 140.h,
            decoration: BoxDecoration(
              color: ColorName.white,
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: ColorName.black.withOpacity(0.08),
                  offset: const Offset(0, 4),
                  blurRadius: 20.r,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              child: Row(
                children: [
                  Container(
                    width: 100.w,
                    height: 120.h,
                    color: ColorName.greyColorBackground,
                    child: item.imageProduct == null
                        ? Image.asset(Assets.images.cartItemJpg.path)
                        : Image.network(
                            item.imageProduct?[0] ?? '',
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(
                                Icons.broken_image,
                                size: 50,
                                color: Colors.grey,
                              );
                            },
                          ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 140.w,
                          height: 60.h,
                          child: Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              // Edited by: Nadeen Mohamed
                              // Edited at date: 21/11/2024
                              // Edite note: use it
                              item.namePlan ?? item.nameProduct ?? '',
                              style: AppTextStyles.kBlack12FontW700,
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ),
                        SizedBox(height: 7.h),
                        PriceWidget(
                          price: (item.pricePlan != 0
                                  ? item.pricePlan
                                  : item.priceProduct)
                              .toString(),
                        ),
                        SizedBox(height: 6.h),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 42.w,
                      height: 46.h,
                      decoration: BoxDecoration(
                        color: ColorName.pinkColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Call removeFromCart method from the cubit
                          context
                              .read<RemoveFromCartCubit>()
                              .removeFromCart(item.id);
                        },
                        icon: Icon(
                          Icons.close,
                          size: 20.r,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
