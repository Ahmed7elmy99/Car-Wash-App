// Edited by: nadeen mohamed
// Edited at date: 24/10/2024
// Edit note: remove views folder and move widgets folder in presentation folder and
// Use the correct imports
import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/booking/detailed_booking_data.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/create_booking_cubit/create_booking_cubit.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/price_text_widget.dart';
import 'package:car_wash_mobile_app/features/service_details/presentation/screens/service_details_screen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

// Edited by: Nadeen Mohamed
// Edited at date: 15/10/2024
// This widget contains the container which appears on the bottom navigation bar in order service screen
class ConfirmReservationContainer extends StatelessWidget {
  const ConfirmReservationContainer({
    super.key,
    // Edited by: Nadeen Mohamed
    // Edited at date: 31/10/2024
    // Edit note: Add variables to the constructor
    required this.priceBeforeDiscount,
    // Edited by: Nadeen Mohamed
    // Edited at date: 10/11/2024
    // Edite note: remove required from priceAfterDiscount
    this.priceAfterDiscount,
  });
  // Edited by: Nadeen Mohamed
  // Edited at date: 31/10/2024
  // Edit note: create variables for priceBeforeDiscount, priceAfterDiscount
  final String priceBeforeDiscount;
  // Edited by: Nadeen Mohamed
  // Edited at date: 10/11/2024
  // Edite note: make priceAfterDiscount to be nullable
  final String? priceAfterDiscount;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Edited by: Nadeen
      // Edited at: 15/10/2024
      // Change the width and height of the container
      // Edited by: nadden mohamed
      // Edited at date: 17/10/2024
      // Edit note: change width to double.infinity
      width: double.infinity,
      height: 91.sp,
      decoration: BoxDecoration(
        color: ColorName.black,
        borderRadius: BorderRadius.only(
          // Edited by: nadeen mohamed
          // Edited at date: 17/10/2024
          // Edit note: add r to the borderRadius
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      // Edited by: Nadeen Mohamed
      // Edited at date: 7/11/2024
      //Use Create Booking cubit
      child: BlocConsumer<CreateBookingCubit, CreateBookingState>(
        listener: (context, state) {
          if (state is CreateBookingSuccess) {
            // Edited by: Nadeen Mohamed
            // Edited at date: 9/11/2024
            // Edite note: if request is success, navigate to service details screen
            context.pushNamed(
              ServiceDetailsScreen.id,
              extra: state.booking as DetailedBookingData,
            );
          }
          if (state is CreateBookingFailure) {
            state.error.showError(context);
          }
        },
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 51.h,
                decoration: BoxDecoration(
                  color: ColorName.green,
                  // Edited by: nadeen mohamed
                  // Edited at: 17/10/2024
                  // Edit note: add r to the borderRadius
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: state is CreateBookingLoading
                      ? const CircularProgressIndicator(
                          color: ColorName.white,
                        )
                      : Text(
                          'confirm_booking'.tr,
                          style: AppTextStyles.kWhite15FontW700,
                        ),
                ),
              ),
              SizedBox(
                width: 27.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Edited by: Nadeen
                  // Edited at date: 15/10/2024
                  // Use custom widget for price
                  PriceTextWidget(
                    textColor: ColorName.white,
                    // Edited by: Nadeen Mohamed
                    // Edited at date: 31/10/2024
                    // Edit note: use price parameter
                    price: priceAfterDiscount,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 50.r),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Text(
                          // Edited by: Nadeen Mohamed
                          // Edited at date: 31/10/2024
                          // Edit note: display priceBeforeDiscount
                          priceBeforeDiscount,
                          style: AppTextStyles.kWhite13InterFontW400.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          width: 55.w, // Adjust width as needed
                          height: 1.h, // Thickness of the line
                          color: ColorName
                              .greyColorBackground, // Color of the line
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
