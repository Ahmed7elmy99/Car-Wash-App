import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/features/service_details/presentation/car_details_cubit/car_details_cubit.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../gen/colors.gen.dart';
import 'package:shimmer/shimmer.dart';
// This class creates a dropdown widget for selecting a car type. It is a stateful widget
// because the UI changes when the dropdown is expanded or collapsed, and when a car is selected.
// start: edited by helmy
//Edit At Date (6/11/2024)
//fix all colors and text styles

class CarTypeDropdown extends StatefulWidget {
  const CarTypeDropdown({super.key});

  @override
  _CarTypeDropdownState createState() => _CarTypeDropdownState();
}

class _CarTypeDropdownState extends State<CarTypeDropdown> {
  bool isExpanded = false;
  String? selectedCar;
  bool selectedCarHintColor = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CarDetailsCubit, CarDetailsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            TextFormField(
              validator: (value) {
                // Check if carType is null, then return the validation message.
                if (selectedCar == null) {
                  return "please select car type".tr;
                }
                return null;
              },
              readOnly: true,
              onTap: () async {
                setState(() {
                  isExpanded = !isExpanded;
                });
                if (isExpanded) {
                  await CarDetailsCubit.get(context).getCarTypes();
                }
              },
              decoration: InputDecoration(
                hintText: selectedCar ?? "carType".tr,
                hintStyle: selectedCarHintColor
                    ? AppTextStyles.kBlack12FontW700
                    : AppTextStyles.kGery11WithOpacity50FontW400,
                prefixIcon: Padding(
                  padding: EdgeInsets.only(
                      left: 8.w, right: AppScreenUtils.isTablet ? 13.w : 15.w),
                  child: Image.asset(
                    Assets.images.carKindIcon.path,
                    fit: BoxFit.contain,
                    width: AppScreenUtils.isTablet ? 23.11.w : 17.11.w,
                    height: 11.h,
                  ),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(
                    left: AppScreenUtils.isTablet ? 10.w : 13.w,
                  ),
                  child: isExpanded
                      ? Icon(
                          Icons.keyboard_arrow_up_rounded,
                          size: AppScreenUtils.isTablet ? 31.sp : 35.sp,
                        )
                      : Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: AppScreenUtils.isTablet ? 31.sp : 35.sp,
                        ),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 17.h, horizontal: 12.w),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                  borderSide: BorderSide(
                    color: ColorName.grey.withOpacity(0.1),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                  borderSide: BorderSide(
                    color: ColorName.grey.withOpacity(0.1),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                  borderSide: BorderSide(
                    color: ColorName.grey.withOpacity(0.1),
                  ),
                ),
              ),
            ),
            if (isExpanded)
              const Divider(
                color: ColorName.green,
                thickness: 1.5,
                height: 0,
              ),
            if (isExpanded)
              state is carDetailsLoadingState
                  ? Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 11.h,
                          right: 17.w,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorName.grey.withOpacity(0.1),
                          ),
                        ),
                        child: Column(
                          children: List.generate(
                            3,
                            (index) => Padding(
                              padding: EdgeInsets.only(bottom: 14.h),
                              child: Row(
                                children: [
                                  Container(
                                    width: 100.w,
                                    height: 15.h,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(
                      padding: EdgeInsets.only(
                        top: 11.h,
                        right: 17.w,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorName.grey.withOpacity(0.1),
                        ),
                      ),
                      child: Column(
                        children: CarDetailsCubit.get(context)
                            .carsTypesModel
                            .map((car) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedCar = car.type;
                                CarDetailsCubit.get(context).carId = car.id;
                                CarDetailsCubit.get(context).carName = car.name;

                                isExpanded = false;
                                selectedCarHintColor = true;
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 14.h),
                              child: Row(
                                children: [
                                  Text(car.type,
                                      style: selectedCar == car.type
                                          ? AppTextStyles.kBlack12FontW700
                                              .copyWith(
                                                  fontFamily:
                                                      FontFamily.poppins)
                                          : AppTextStyles.kBlack12FontW700
                                              .copyWith(
                                                  fontFamily:
                                                      FontFamily.poppins)),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
          ],
        );
      },
    );
  }
}
