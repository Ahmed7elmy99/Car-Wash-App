// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/car_details/car_details_model.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/features/order_service/data/model/car_model.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/get_user_cars/get_user_cars_cubit.dart';
import 'package:car_wash_mobile_app/features/reservation/presentation/widgets/reservation_item_shimmer.dart';
import 'package:car_wash_mobile_app/features/service_details/presentation/screens/car_details_screen.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';

class PlanInfoCarsList extends StatefulWidget {
  const PlanInfoCarsList({super.key, required this.onTap});
  final Function(CarModel car) onTap;
  @override
  State<PlanInfoCarsList> createState() => _PlanInfoCarsListState();
}

class _PlanInfoCarsListState extends State<PlanInfoCarsList> {
  late GetUserCarsCubit carsCubit = BlocProvider.of<GetUserCarsCubit>(context);
  List<CarModel> carsList = [];

  CarModel? isSelected;

  @override
  void initState() {
    super.initState();
    carsCubit.getAllCars();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetUserCarsCubit, GetUserCarsState>(
      listener: (context, state) {
        if (state is CarsFailure) {
          state.error.showError(context);
        }
      },
      builder: (context, state) {
        if (state is CarsLoading) {
          log("Lodding Cars");
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) => ReservationItemShimmer(),
          );
        } else if (state is CarsSuccess) {
          carsList = state.allCars as List<CarModel>;
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 10.sp),
            itemBuilder: (context, index) {
              final car = carsList[index];
              return PlanInfoCarDetails(
                car: car,
                isSelected: isSelected == car,
                ontap: (car) {
                  isSelected = car;
                  widget.onTap(car);
                  setState(() {});
                },
              );
            },
            itemCount: carsList.length,
          );
        }
        return Container();
      },
    );
  }
}

// start: edited by helmy
//Edit At Date (21/10/2024)
//fix all colors and text styles
class PlanInfoCarDetails extends StatelessWidget {
  const PlanInfoCarDetails({
    super.key,
    required this.car,
    required this.ontap,
    this.isSelected = false,
  });

  final CarModel car;
  final bool isSelected;
  final Function(CarModel car) ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ontap(car),
      child: Container(
        height: 60.h,
        padding: EdgeInsets.all(8.sp),
        width: AppScreenUtils.w - 90.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.sp),
            color: isSelected ? ColorName.mintGreen.withOpacity(.1) : null,
            border: Border.all(
              color: isSelected
                  ? ColorName.mintGreen
                  : ColorName.grey.withOpacity(.10),
              width: 3.sp,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 85.w,
              height: 65.h,
              clipBehavior: Clip.hardEdge,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10.sp)),
              child: CachedNetworkImage(
                imageUrl: car.imageCar,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "${"car".tr} ${car.carName}",
                    style: AppTextStyles
                        .blackText12FontW700, // Service address text
                  ),
                  const SizedBox(height: 12), // Space between lines
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("${"color".tr} - ",
                          style: AppTextStyles.kGrey12FontW400),
                      SizedBox(width: 10.sp),
                      Container(
                        width: 20.sp,
                        height: 20.sp,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorName.grey,
                              width: 1.sp,
                            ),
                            borderRadius: BorderRadius.circular(8.sp),
                            color: hexToColor(car.colorCar)),
                      )
                    ],
                  ),

                  const SizedBox(height: 12), // Space between lines
                  Text.rich(TextSpan(
                    children: [
                      TextSpan(
                          text: "number".tr,
                          style: AppTextStyles.kGrey12FontW400),
                      TextSpan(text: " - "),
                      TextSpan(text: car.carNumber)
                    ],
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
    // If the string starts with #, process it as a shorthand or full hex code
    if (hexString.startsWith('#')) {
      if (hexString.length == 4) {
        // Shorthand RGB (#RGB) => Expand to #RRGGBB
        hexString =
            '#${hexString[1]}${hexString[1]}${hexString[2]}${hexString[2]}${hexString[3]}${hexString[3]}';
      } else if (hexString.length == 5) {
        // Shorthand RGBA (#RGBA) => Expand to #RRGGBBAA
        hexString =
            '#${hexString[1]}${hexString[1]}${hexString[2]}${hexString[2]}${hexString[3]}${hexString[3]}${hexString[4]}${hexString[4]}';
      }
      if (hexString.length == 7) {
        // Add alpha channel to #RRGGBB
        hexString = hexString.replaceFirst('#', '0x$alphaChannel');
      } else if (hexString.length == 9) {
        // Already #RRGGBBAA, just replace #
        hexString = hexString.replaceFirst('#', '0x');
      }
    } else if (hexString.length == 8) {
      // Assume raw 8-character hex string (AARRGGBB)
      hexString = '0x$hexString';
    }
    return Color(int.parse(hexString));
  }

  // static Widget shimmer() {
  //   return Container(
  //     height: 60.h,
  //     padding: EdgeInsets.all(8.sp),
  //     width: AppScreenUtils.w - 50.w,
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(6.sp),
  //         border: Border.all(
  //           color: ColorName.grey.withOpacity(.10),
  //           width: 1.sp,
  //         )),
  //     child: Shimmer.fromColors(
  //       baseColor: Colors.grey.shade300,
  //       highlightColor: Colors.grey.shade100,
  //       child: Row(
  //         children: [
  //           Container(
  //             width: 85.w,
  //             height: 65.h,
  //             clipBehavior: Clip.hardEdge,
  //             decoration:
  //                 BoxDecoration(borderRadius: BorderRadius.circular(10.sp)),
  //           ) ,
  //           Column(
  //             children: [
  //               Container(
  //                 height: 10.sp,
  //                 width: 20,
  //               )
  //             ],
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
