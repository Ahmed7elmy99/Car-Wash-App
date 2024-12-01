import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/home/presentation/cubit/add_to_cart/add_to_cart_cubit.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class AddPlanToCartButton extends StatefulWidget {
  const AddPlanToCartButton(
      {super.key, required this.buttonColor, required this.plan,  this.loadingColor, this.checkIconColor, this.textColor});
  final Color buttonColor;
  final plan;
  final Color? loadingColor;
  final Color? checkIconColor;
  final TextStyle? textColor;

  @override
  State<AddPlanToCartButton> createState() => _AddPlanToCartButtonState();
}

class _AddPlanToCartButtonState extends State<AddPlanToCartButton> {
  late AddToCartCubit addToCartCubit;

  @override
  void initState() {
    addToCartCubit = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final buttonColor = widget.buttonColor;
    final plan = widget.plan;
    final Color? loadingColor = widget.loadingColor;
    final Color? checkIconColor = widget.checkIconColor;
    final TextStyle? textColor = widget.textColor;

    return BlocConsumer<AddToCartCubit, AddToCartState>(
      listener: (context, state) {
        print('Current state: $state'); // Log the current state
        if (state is AddToCartSuccess) {
          print(
              "::::::::::::::::::::::::::::::::::::::::::::::::::::: ITEM ADDED TO CART SUCCESS");
          showTopSnackBar(
            Overlay.of(context),
            CustomSnackBar.success(
              backgroundColor: Colors.grey.shade200.withOpacity(0.5),
              boxShadow: [
                BoxShadow(color: Colors.grey.shade200.withOpacity(0.5))
              ],
              icon: const SizedBox(),
              textStyle: AppTextStyles.kBlack15FontW600,
              message: "item_added_to_cart_successfully".tr,
            ),
          );
        } else if (state is AddToCartError) {
          print(
              "::::::::::::::::::::::::::::::::::::::::::::::::::::: ITEM ADDED TO CART ERROR");
          state.error.showError(context);
        }
      },
      builder: (context, state) {
        final isLoading =
            state is AddToCartLoading && state.planId == plan.id.toString();

        return Center(
          child: CustomButton(
            boarderRadius: 10.r,
            width: 185.w,
            height: 38.h,
            color: buttonColor,
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 18.w),
                child: isLoading
                    ? Center(
                        child: SizedBox(
                          height: 22.h,
                          width: 22.h,
                          child: CircularProgressIndicator(
                            color: loadingColor ??  ColorName.mintGreen,
                          ),
                        ),
                      )
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6.w),
                            child: SvgPicture.asset(
                              Assets.images.homeCheckIcon.path,
                              width: 11.75.w,
                              height: 11.75.h,
                              color: checkIconColor ?? ColorName.darkBlackColor,
                            ),
                          ),
                          Text(
                            "choose_plan".tr,
                            style: textColor?? AppTextStyles.kBlack14FontW700,
                          )
                        ],
                      )),
            onTap: () {
              setState(() {
                addToCartCubit.addToCart(planId: plan.id.toString());
              });
            },
          ),
        );
      },
    );
  }
}
