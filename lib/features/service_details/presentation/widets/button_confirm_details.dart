import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
// Edited by: Nadeen Mohamed
// Edited at date: 24/10/2024
// Edit note: change the correct path of order service screen after remove views folder
import 'package:car_wash_mobile_app/features/service_details/presentation/car_details_cubit/car_details_cubit.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

// start: created by helmy
//Edit At Date (6/11/2024)
//craete createCarDetails function request from carDetailsCubit
class ButtonConfirmDetails extends StatelessWidget {
  const ButtonConfirmDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CarDetailsCubit, CarDetailsState>(
      listener: (context, state) {
        if (state is createCarDetailsSuccessState) {
          if (context.mounted) {
            // context.pushReplacement(OrderServiceScreen.id);
            // Edited by: Nadeen Mohamed
            // Edited at date: 9/11/2024
            // Edite note: use context.pop() to navigate to order service screen
            context.pop();
          }
          print("sucessssssssssssssssssssss");
        }
        if (state is CreateCarDetailsErrorState) {
          state.error.showError(context);
        }
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(
              right: 14.w, left: 14.w, bottom: 8.h), // Unchanged
          child: CustomButton(
            height: 51.h, // Unchanged
            boarderRadius: 10.sp, // Unchanged
            onTap: () {
              //edited by helmy
              //edited at 22/10/2024
              CarDetailsCubit.get(context).createCarDetails(context);
              /*  if (context.mounted) {
                context.pushNamed(OrderServiceScreen.id);
              }*/
            }, // Unchanged
            child: state is createCarDetailsLoadingState
                ? const CircularProgressIndicator(
                    color: ColorName.white,
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Unchanged
                    children: [
                      SizedBox(
                          height: 16.h,
                          width: 12.w,
                          child: Assets.images.rightArrow
                              .svg()), // Replaced static image with an SVG for the arrow.
                      SizedBox(width: 10.w),
                      // Unchanged
                      Text(
                        "confirmDetails".tr, // Unchanged
                        style: AppTextStyles.kWhite15FontW700, // Unchanged
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
