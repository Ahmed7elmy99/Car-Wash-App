import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/all_plans/all_plans_model.dart';
import 'package:car_wash_mobile_app/core/widgets/add_plan_to_cart_button.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/cubits/show_cart_items_cubit/show_cart_items_cubit.dart';
import 'package:car_wash_mobile_app/features/home/presentation/cubit/add_to_cart/add_to_cart_cubit.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math' as math;

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePlanListItem extends StatefulWidget {
  const HomePlanListItem(
      {super.key,
      required this.plan,
      required this.color,
      required this.buttonColor});

  final AllPlansModel plan;
  final Color color;
  final Color buttonColor;

  @override
  State<HomePlanListItem> createState() => _HomePlanListItemState();
}

class _HomePlanListItemState extends State<HomePlanListItem> {
  late AddToCartCubit addToCartCubit;

  @override
  void initState() {
    addToCartCubit = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final color = widget.color;
    final plan = widget.plan;
    final buttonColor = widget.buttonColor;
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: ExpansionWidget(
        initiallyExpanded: true, // Controls the initial expanded state
        titleBuilder:
            (animationValue, easeInValue, isExpanded, toggleFunction) {
          // Builds the title of the expansion widget
          return ListTile(
            trailing: Transform.rotate(
              // Rotates the arrow icon based on expansion state
              angle: math.pi * animationValue,
              child: Icon(
                Icons
                    .keyboard_arrow_up_rounded, // Arrow pointing up if expanded
                color: Colors.black,
                size: 25.sp,
              ),
            ),

            ///TITLE
            title: Text(
              plan.name.tr,
              style: AppTextStyles.blackText16FontW700,
            ),

            ///PRICE
            subtitle: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.h, bottom: 5.h),
                  child: Row(
                    children: [
                      Text(
                        "${plan.price}/",
                        style: AppTextStyles.black12FontPoppinsW700,
                      ),
                      Text(
                        "rial_monthly".tr,
                        style: AppTextStyles.kBlack12FontW700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            onTap: toggleFunction, // Toggles the expansion state on tap
          );
        },
        content: SizedBox(
          width: 345.w,
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              start: 8.w,
              end: 20.w,
              bottom: 11.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15.h, bottom: 12.h),
                  child: Divider(
                    color: ColorName.verylightgrayshade,
                    height: 1.h,
                  ),
                ),

                ///PLAN DETAILS [SERVICE ITEMS]
                ...List.generate(
                  plan.serviceItems.length,
                  (index) {
                    final planServiceItem = plan.serviceItems[index];
                    return Padding(
                      padding: EdgeInsets.only(bottom: 13.h),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            // Edited by: Nadeen Mohamed
                            // Edited at date: 7/11/2024
                            // Edit note: use the correct path of svg image
                            Assets.images.homeOfferIcon.path,
                            width: 16.w,
                            height: 16.w,
                          ),
                          SizedBox(width: 6.w),
                          Text(
                            planServiceItem.serviceName,
                            style: AppTextStyles.darkBlackText10FontW400,
                          ),
                        ],
                      ),
                    );
                  },
                ),

                /// CHOOSE PLAN BUTTON
                AddPlanToCartButton(
                  buttonColor: buttonColor,
                  plan: plan,
                ),
                // BlocConsumer<AddToCartCubit, AddToCartState>(
                //   listener: (context, state) {
                //     print('Current state: $state'); // Log the current state
                //     if (state is AddToCartSuccess) {
                //       print(
                //           "::::::::::::::::::::::::::::::::::::::::::::::::::::: ITEM ADDED TO CART SUCCESS");
                //     } else if (state is AddToCartError) {
                //       print(
                //           "::::::::::::::::::::::::::::::::::::::::::::::::::::: ITEM ADDED TO CART ERROR");
                //       state.error.showError(context);
                //     }
                //   },
                //   builder: (context, state) {
                //     final isLoading = state is AddToCartLoading &&
                //         state.planId == plan.id.toString();
                //
                //     return Center(
                //       child: CustomButton(
                //         boarderRadius: 10.r,
                //         width: 185.w,
                //         height: 38.h,
                //         color: buttonColor,
                //         child: Padding(
                //             padding: EdgeInsets.symmetric(
                //                 vertical: 5.h, horizontal: 18.w),
                //             child: isLoading
                //                 ? Center(
                //                     child: SizedBox(
                //                       height: 22.h,
                //                       width: 22.h,
                //                       child:  const CircularProgressIndicator(
                //                         color:ColorName.mintGreen ,
                //                       ),
                //                     ),
                //                   )
                //                 : Row(
                //                     mainAxisSize: MainAxisSize.min,
                //                     children: [
                //                       Padding(
                //                         padding: EdgeInsets.symmetric(
                //                             horizontal: 6.w),
                //                         child: SvgPicture.asset(
                //                           // Edited by: Nadeen Mohamed
                //                           // Edited at date: 7/11/2024
                //                           // Edit note: use the correct path of svg image
                //                           Assets.images.homeCheckIcon.path,
                //                           width: 11.75.w,
                //                           height: 11.75.h,
                //                         ),
                //                       ),
                //                       Text(
                //                         "choose_plan".tr,
                //                         style: AppTextStyles.kBlack14FontW700,
                //                       )
                //                     ],
                //                   )),
                //         onTap: () {
                //           setState(() {
                //             addToCartCubit.addToCart(planId: plan.id.toString());
                //           });
                //         },
                //       ),
                //     );
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
