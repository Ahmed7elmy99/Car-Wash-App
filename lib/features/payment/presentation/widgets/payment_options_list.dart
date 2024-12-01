import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/payment/payment_way_model.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/features/payment/presentation/payment_cubit/payment_cubit.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PaymentOptionsList extends StatefulWidget {
  ///show the list of options of available online payment methods like (mada, crdit card , apple pay , STC pay , bank transfer )
  const PaymentOptionsList({
    super.key,
    required this.paymentOptionsList,
  });
  final List<PaymentWayModel> paymentOptionsList;

  @override
  State<PaymentOptionsList> createState() => _PaymentOptionsListState();
}

class _PaymentOptionsListState extends State<PaymentOptionsList> {
  late PaymentCubit cubit;
  @override
  void initState() {
    super.initState();
    cubit = PaymentCubit.get(context);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.paymentOptionsList.length,
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        if (index == 0) {
          return const SizedBox();
        }
        return Divider(
          color: ColorName.grey.withOpacity(0.05),
        );
      },
      itemBuilder: (context, index) {
        PaymentWayModel option = widget.paymentOptionsList[index];
        if (index == 0) {
          return Padding(
            padding: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 12.h),
            child: Container(
              decoration: BoxDecoration(
                color: ColorName.lightMintGreenColor,
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          BlocProvider.of<PaymentCubit>(context).chosenWay =
                              option;
                        },
                      );
                    },
                    child: ListTile(
                      tileColor: Colors.transparent,
                      trailing: Transform.scale(
                        // make check if the screen size is for tablet then make the size of radio button
                        //more bigger
                        scale: AppScreenUtils.isTablet ? 1.6 : 1.2,
                        child: Radio<PaymentWayModel>(
                          activeColor: ColorName.mainGreenColor,
                          groupValue:
                              BlocProvider.of<PaymentCubit>(context).chosenWay,
                          value: option,
                          onChanged: (value) {
                            setState(
                              () {
                                BlocProvider.of<PaymentCubit>(context)
                                    .chosenWay = value!;
                              },
                            );
                          },
                        ),
                      ),
                      title: Text(
                        "pay_on_arrival".tr,
                        style: AppTextStyles.kBlack15FontW400,
                      ),
                      subtitle: Text(
                        "pay_on_arrival_description".tr,
                        style: AppTextStyles.kGery12WithOpacity50FontW400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return ListTile(
            minLeadingWidth: 25.w,
            leading: Transform.scale(
              scale: AppScreenUtils.isTablet ? 1.5 : 1,
              child: CachedNetworkImage(
                imageUrl: option.imageUrl,
                width: 41.w,
                height: 41.w,
              ),
            ),
            onTap: () {
              setState(
                () {
                  BlocProvider.of<PaymentCubit>(context).chosenWay = option;
                },
              );
            },
            //edited by : waleed
            //edited at : 21/10/2024
            //edits : give style for payment gateway name
            title: Text(
              Get.locale!.languageCode == "en"
                  ? widget.paymentOptionsList[index].paymentMethodEn
                  : widget.paymentOptionsList[index].paymentMethodAr,
              //check if the name is arabic or not to give it the right style
              style: Get.locale!.languageCode == "ar"
                  ? AppTextStyles.kBlack12FontW400
                  : AppTextStyles.kBlack12InterFontW500,
            ),
            trailing: Transform.scale(
              // make check if the screen size is for tablet then make the size of radio button
              //more bigger
              scale: AppScreenUtils.isTablet ? 1.6 : 1.2,
              child: Radio<PaymentWayModel>(
                activeColor: ColorName.mainGreenColor,
                groupValue: BlocProvider.of<PaymentCubit>(context).chosenWay,
                value: option,
                onChanged: (value) {
                  setState(
                    () {
                      BlocProvider.of<PaymentCubit>(context).chosenWay = value!;
                    },
                  );
                },
              ),
            ),
          );
        }
        // this package allows for us to make accordion design for a list that its items have internal content.
        // return ExpansionWidget(
        //   content: Container(
        //     decoration: BoxDecoration(
        //       color: ColorName.lightMintGreenColor,
        //       borderRadius: BorderRadius.circular(14.r),
        //     ),
        //     child: Column(
        //       children: [
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             //edited by : waleed
        //             //edited at : 21/10/2024
        //             //edits : make logos of (master card , visa) to be bigger on tablet
        //             SizedBox(
        //               height: 32.h,
        //               width: 32.h,
        //               child: Transform.scale(
        //                 scale: AppScreenUtils.isTablet ? 1.5 : 1,
        //                 child: Assets.images.visaCreditCard.image(),
        //               ),
        //             ),
        //             SizedBox(width: 16.w),
        //             SizedBox(
        //               height: 32.h,
        //               width: 32.h,
        //               child: Transform.scale(
        //                 scale: AppScreenUtils.isTablet ? 1.5 : 1,
        //                 child: Assets.images.mastercardLogo.image(),
        //               ),
        //             ),
        //           ],
        //         ),
        //         SizedBox(height: 13.h),
        //         PaymentTextField(
        //           hintText: "cardholder_name".tr,
        //           controller: TextEditingController(),
        //         ),
        //         PaymentTextField(
        //           // it will show keyboard of numbers
        //           isNumber: true,
        //           hintText: "card_number".tr,
        //           controller: TextEditingController(),
        //         ),
        //         Padding(
        //           padding: EdgeInsets.only(bottom: 13.w),
        //           child: Text(
        //             "refund_note".tr,
        //             style: AppTextStyles.kDarkGery11W400,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        //   titleBuilder:
        //       (animationValue, easeInValue, isExpanded, toggleFunction) {
        //     PaymentWayModel option = paymentOptionsList[index];
        //     return ListTile(
        //       //edited by : waleed
        //       //edited at : 21/10/2024
        //       //edits : make logos to be bigger on tablet and set the min leading width to 25
        //       //to make it look better
        //       minLeadingWidth: 25.w,
        //       leading: Transform.scale(
        //         scale: AppScreenUtils.isTablet ? 1.5 : 1,
        //         child: CachedNetworkImage(
        //           imageUrl: option.imageUrl,
        //           width: 41.w,
        //           height: 41.w,
        //         ),
        //       ),
        //       onTap: () {
        //         toggleFunction();
        //       },
        //       //edited by : waleed
        //       //edited at : 21/10/2024
        //       //edits : give style for payment gateway name
        //       title: Text(
        //         Get.locale!.languageCode == "en"
        //             ? paymentOptionsList[index].paymentMethodEn
        //             : paymentOptionsList[index].paymentMethodAr,
        //         //check if the name is arabic or not to give it the right style
        //         style: Get.locale!.languageCode == "ar"
        //             ? AppTextStyles.kBlack12FontW400
        //             : AppTextStyles.kBlack12InterFontW500,
        //       ),
        //       /*this will use the animation value that comes with title builder to make animation and rotate
        //       the arrow */
        //       trailing: Transform.rotate(
        //         angle: math.pi * animationValue,
        //         child: Icon(
        //           Icons.keyboard_arrow_down_rounded,
        //           color: ColorName.grey.withOpacity(0.5),
        //           //edited by : waleed
        //           //edited at : 21/10/2024
        //           //edits : make the arrow to be smaller on tablet
        //           size: AppScreenUtils.isTablet ? 22.sp : 30.sp,
        //         ),
        //       ),
        //     );
        //   },
        // );
      },
    );
  }
}
