import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/all_plans/all_plans_model.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/widgets/add_button_widget.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/get_user_cars/get_user_cars_cubit.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/choose_time_listview.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/choose_time_row.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/reservation_type_container.dart';
import 'package:car_wash_mobile_app/features/service_details/presentation/screens/car_details_screen.dart';
import 'package:car_wash_mobile_app/features/user_planes/data/model/reservation_details_model.dart';
import 'package:car_wash_mobile_app/features/user_planes/data/model/single_plan_info_model.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/cubits/packages_cubit/packages_cubit.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/widgets/plan_info_car_item.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/widgets/plan_info_service_items_Slection.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/widgets/service_date_container.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class PlanServiceBookingScreen extends StatelessWidget {
  const PlanServiceBookingScreen(
      {super.key, required this.model, required this.activeservice});

  final SinglePlanInfoModel model;

  final AllPlanServiceItem activeservice;

  static String id = "/PlanServiceBookingScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        scrolledUnderElevation: 0,
      ),
      body: SafeArea(
          child: BlocConsumer<PackagesCubit, PackagesState>(
        listener: (context, state) {
          if (state is PlanInfoError) {
            state.error.showError(context);
          }
        },
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () =>
                BlocProvider.of<GetUserCarsCubit>(context).getAllCars(),
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                width: AppScreenUtils.w,
                child: PlanServiceBookingBody(
                    activeservice: activeservice, model: model)),
          );
        },
      )),
    );
  }
}

class PlanServiceBookingBody extends StatefulWidget {
  const PlanServiceBookingBody(
      {super.key, required this.model, required this.activeservice});
  final SinglePlanInfoModel model;

  final AllPlanServiceItem activeservice;

  @override
  State<PlanServiceBookingBody> createState() => _PlanServiceBookingBodyState();
}

class _PlanServiceBookingBodyState extends State<PlanServiceBookingBody> {
  ReservationDetailsModel reservemodel = ReservationDetailsModel.empty();
  List<int> serviesList = [];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CachedNetworkImage(imageUrl: widget.activeservice.serviceImage),
        SizedBox(height: 10.sp),
        Text(widget.activeservice.serviceName,
            style: AppTextStyles.kBlack15FontW700),
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text:
                "${widget.activeservice.numberTimesUsed}/", // Displays price with currency
            style: AppTextStyles.black12FontPoppinsW700,
          ),
          TextSpan(
            // Displays duration (e.g., monthly)
            text: "numberTimesUsed".tr,
            style: AppTextStyles.blackText16FontW700,
          ),
        ])),
        SizedBox(height: 10.sp),
        PlanInfoServiceItemsSelection(
            packageModel: widget.model,
            scrollDirection: Axis.horizontal,
            selectedItems: (items) {},
            height: 90.h),
        SizedBox(height: 10.sp),
        ReservationTypeContainer(
          value: (val) {
            log(val.toString());
            final String location = val == 0 ? "inside" : "outside";
            reservemodel =
                reservemodel.copyWith(implementationLocation: location);
          },
        ),
        SizedBox(height: 10.sp),
        Text("choose_date".tr, style: AppTextStyles.kBlack15FontW700),
        ServiceDateContainer(onfinsh: (date) {
          log(date.toString());
          reservemodel =
              reservemodel.copyWith(implementationDate: date.toString());
        }),
        SizedBox(height: 10.sp),
        ChooseTimeRow(
          onfinish: (choise) {
            log(choise.toString());
          },
        ),
        SizedBox(height: 10.sp),
        ChooseTimeListview(
          value: (index) {
            log(index);
            reservemodel = reservemodel.copyWith(implementationTime: index);
          },
        ),
        SizedBox(height: 10.sp),
        Text("select_address".tr, style: AppTextStyles.kBlack15FontW700),
        SizedBox(height: 10.sp),
        GestureDetector(
          onTap: () => context.pushNamed,
          child: Container(),
        ),
        SizedBox(height: 10.sp),
        Flexible(
          child: Row(
            children: [
              Text(
                "car_details".tr,
                style: AppTextStyles.kBlack15FontW700,
              ),
              Spacer(),
              AddButtonWidget(
                  onTap: () => context.pushNamed(CarDetailsScreen.id))
            ],
          ),
        ),
        SizedBox(height: 10.sp),
        SizedBox(
            height: 100.h,
            child: PlanInfoCarsList(
              onTap: (car) {
                reservemodel = reservemodel.copyWith(myCarId: car.carId);
              },
            )),
        SizedBox(height: 10.sp),
        CustomButton(
          color: Colors.black, // Button color
          boarderRadius: 10.r, // Rounded corners
          width: 374.w,
          onTap: () {
            log(reservemodel.toString());
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 14.h),
            child: Center(
              child: Text(
                'add_reservation_date'.tr,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ), // Handle renew action
        ),
        SizedBox(height: 10.sp),
        CustomButton(
          // color: Colors.black, // Button color
          boarderRadius: 10.r, // Rounded corners
          width: 374.w,
          onTap: () => context.pop(),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 14.h),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.images.rightArrowDashed
                      .svg(width: 20.sp, height: 20.sp, color: Colors.white),
                  SizedBox(width: 10.sp),
                  Text(
                    "back".tr,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ), // Handle renew action
        ),
      ],
    );
  }
}
