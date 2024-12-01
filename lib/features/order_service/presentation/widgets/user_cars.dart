// Created by: Nadeen Mohamed
// Created at date: 7/11/2024
// Create widget to enable user select car from his cars
import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/features/order_service/data/model/car_model.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/booking_cubit/booking_cubit.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/get_user_cars/get_user_cars_cubit.dart';
import 'package:car_wash_mobile_app/features/service_details/presentation/screens/car_details_screen.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class CarDropdown extends StatefulWidget {
  const CarDropdown({super.key});

  @override
  _CarDropdownState createState() => _CarDropdownState();
}

class _CarDropdownState extends State<CarDropdown> {
  String? selectedCarName;
  bool isExpanded = false;
  bool selectedCarHintColor = false;

  @override
  void initState() {
    super.initState();
    // Fetch cars initially
    context.read<GetUserCarsCubit>().getAllCars();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetUserCarsCubit, GetUserCarsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            TextFormField(
              validator: (value) {
                if (selectedCarName == null) {
                  return "Please select a car".tr;
                }
                return null;
              },
              readOnly: true,
              onTap: () async {
                setState(() {
                  isExpanded = !isExpanded;
                });
                if (isExpanded) {
                  context.read<GetUserCarsCubit>().getAllCars();
                }
              },
              decoration: InputDecoration(
                hintText: selectedCarName ?? "select_car_only".tr,
                hintStyle: selectedCarHintColor
                    ? AppTextStyles.kBlack12FontW700
                    : AppTextStyles.kGery11WithOpacity50FontW400,
                prefixIcon: Padding(
                  padding: EdgeInsets.only(
                    left: 8.0.w,
                    right: AppScreenUtils.isTablet ? 13.0 : 15.0,
                  ),
                  child: Image.asset(
                    Assets.images.carKindIcon.path,
                    fit: BoxFit.contain,
                    width: AppScreenUtils.isTablet ? 23.11 : 17.11,
                    height: 11.0.h,
                  ),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(
                    left: AppScreenUtils.isTablet ? 10.0 : 13.0,
                  ),
                  child: isExpanded
                      ? Icon(
                          Icons.keyboard_arrow_up_rounded,
                          size: AppScreenUtils.isTablet ? 31.0 : 35.0,
                        )
                      : Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: AppScreenUtils.isTablet ? 31.0 : 35.0,
                        ),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 17.0.h, horizontal: 12.0.w),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: BorderSide(
                    color: ColorName.grey.withOpacity(0.1),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: BorderSide(
                    color: ColorName.grey.withOpacity(0.1),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
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
              state is CarsLoading
                  ? Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        padding: EdgeInsets.only(top: 11.0.h, right: 17.0.w),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorName.grey.withOpacity(0.1),
                          ),
                        ),
                        child: Column(
                          children: List.generate(
                            3,
                            (index) => Padding(
                              padding: EdgeInsets.only(bottom: 14.0.h),
                              child: Row(
                                children: [
                                  Container(
                                    width: 100.0,
                                    height: 15.0,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : state is CarsFailure
                      ? const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text('Failed to load cars'),
                        )
                      : state is CarsSuccess<List<CarModel>>
                          ? Container(
                              padding:
                                  EdgeInsets.only(top: 11.0.h, right: 17.0.w),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorName.grey.withOpacity(0.1),
                                ),
                              ),
                              child: state.allCars.isEmpty
                                  ? Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      // Edited by: Nadeen Mohamed
                                      // Edited at date: 9/11/2024
                                      // Edite note: add column and text widget
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional.only(
                                                end: 30.w, start: 30.w),
                                            child: const Text(
                                              'No Cars Found, Please Add Car',
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: ColorName.green,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                            ),
                                            onPressed: () {
                                              context.pushNamed(
                                                  CarDetailsScreen.id);
                                            },
                                            child: const Text(
                                              'Add a New Car',
                                              style: TextStyle(
                                                color: ColorName.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : Column(
                                      children: state.allCars.map((car) {
                                        return InkWell(
                                          onTap: () {
                                            setState(() {
                                              // Edited by: Nadeen Mohamed
                                              // Edited at date: 10/11/2024
                                              // Edite note: use carName instead of carType
                                              selectedCarName = car.carName;
                                              isExpanded = false;

                                              // Update the selected car in BookingCubit
                                              context
                                                  .read<BookingCubit>()
                                                  .updateSelectedCar(car);
                                            });
                                          },
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 14.0.h),
                                            child: Row(
                                              children: [
                                                Text(
                                                  // Edited by: Nadeen Mohamed
                                                  // Edited at date: 10/11/2024
                                                  // Edite note: use carName instead of carType
                                                  car.carName,
                                                  style: selectedCarName ==
                                                          // Edited by: Nadeen Mohamed
                                                          // Edited at date: 10/11/2024
                                                          // Edite note: use carName instead of carType
                                                          car.carName
                                                      ? AppTextStyles
                                                          .kBlack12FontW700
                                                      : AppTextStyles
                                                          .kBlack12FontW700,
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                            )
                          : const SizedBox.shrink(),
          ],
        );
      },
    );
  }
}
