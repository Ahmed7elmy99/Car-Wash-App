import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/cart/cart_model.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/cubits/add_cupon_cubit/cupon_cubit.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/cubits/show_cart_items_cubit/show_cart_items_cubit.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/widgets/cart_and_cart_contents_row.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/widgets/cart_item_shimmer.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/widgets/cart_items_listview.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/widgets/cart_screen_empty_body.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/widgets/payment_details.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/widgets/total_price_container.dart';
// Edited by: Nadeen Mohamed
// Edited at date: 24/10/2024
// Edit note: import the correct path of price text widget after changing the paths
import 'package:car_wash_mobile_app/features/payment/presentation/screens/payment_screen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

// Created by: Nadeen Mohamed
// Created at date: 20/10/2024
// This widget contains the body of the cart screen
class CartScreenBody extends StatefulWidget {
  const CartScreenBody({super.key});

  @override
  State<CartScreenBody> createState() => _CartScreenBodyState();
}
class _CartScreenBodyState extends State<CartScreenBody> {
  late ShowCartItemsCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = ShowCartItemsCubit.get(context);
    
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CuponCubit(),
      child: BlocBuilder<ShowCartItemsCubit, ShowCartItemsState>(
     
        builder: (context, state) {
       
          if (state is ShowCartItemsLoading) {
            // Show shimmer loading effect while data is loading
            return ListView.separated(
              itemCount: 3,
              itemBuilder: (context, index) {
                return const CartItemShimmer();
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 20.h);
              },
            );
          } else if (state is ShowCartItemsSuccess &&
              cubit.cartItemModel!.data.isNotEmpty) {
                
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CartAndCartContentsRow(
                      numberOfItems:
                          cubit.cartItemModel!.data.length.toString(),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    const CartItemsListview(),
                    SizedBox(height: 20.h),
                    const PaymentDetails(),
                    SizedBox(height: 20.h),
                    const TotalPriceContainer(),
                    SizedBox(height: 54.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            GoRouter.of(context).pushNamed(PaymentScreen.id);
                          },
                          child: Container(
                            width: 180.w,
                            height: 51.h,
                            decoration: BoxDecoration(
                              color: ColorName.green,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Center(
                              child: Text(
                                'continue'.tr,
                                style: AppTextStyles.kWhite15FontW700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 34.h),
                  ],
                ),
              ),
            );
          } else {
            // Handle failure or empty state
            return const CartScreenEmptyBody();
          }
        },
      ),
    );
  }
}
