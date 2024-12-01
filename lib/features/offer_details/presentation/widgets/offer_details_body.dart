import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/offers/offers_model.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/widgets/add_plan_to_cart_button.dart';
import 'package:car_wash_mobile_app/features/home/presentation/cubit/add_to_cart/add_to_cart_cubit.dart';
import 'package:car_wash_mobile_app/features/offer_details/presentation/widgets/plan_descreption.dart';
import 'package:car_wash_mobile_app/features/offer_details/presentation/widgets/plan_offer_name.dart';
import 'package:car_wash_mobile_app/features/offer_details/presentation/widgets/plan_price.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/widgets/plan_info_service_items_widget.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OfferDetailsBody extends StatefulWidget {
  const OfferDetailsBody({super.key, required this.offersModel});

  final OffersModel offersModel;

  @override
  State<OfferDetailsBody> createState() => _OfferDetailsBodyState();
}

class _OfferDetailsBodyState extends State<OfferDetailsBody> {
  late AddToCartCubit addToCartCubit;
  @override
  void initState() {
    addToCartCubit = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final OffersModel offersModel = widget.offersModel;
    return SizedBox(
      width: AppScreenUtils.w,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PlanOfferName(name: offersModel.plan.name),
          SizedBox(height: 12.h),
          Expanded(
              child: Container(
            margin: EdgeInsets.symmetric(horizontal: 27.sp, vertical: 15.sp),
            width: AppScreenUtils.w,
            decoration: BoxDecoration(
              color: ColorName.greenish,
              boxShadow: [
                BoxShadow(
                  color: ColorName.black.withOpacity(0.08), // 8% opacity
                  offset: const Offset(0, 4), // X: 0, Y: 4
                  blurRadius: 20.r, // Blur radius of 20
                  spreadRadius: 0, // No spread
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.sp),
                PlanPrice(
                  price: offersModel.plan.price,
                  time: offersModel.plan.packageTime,
                ),
                SizedBox(height: 30.sp),
                PlanDescription(description: offersModel.plan.description),
                SizedBox(height: 30.sp),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.sp),
                  child: Text(
                    "services".tr,
                    style: AppTextStyles.kBlack24FontW700,
                  ),
                ),
                Expanded(
                    child: PlanInfoServiceItemsWidget(
                        packageModel: offersModel.plan)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: AddPlanToCartButton(
                    buttonColor: ColorName.darkBlackColor,
                    plan: offersModel.plan,
                    textColor: AppTextStyles.kWhite14FontW700,
                    loadingColor: ColorName.white,
                    checkIconColor: ColorName.white,
                  ),
                ),
                SizedBox(height: 12.h),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
