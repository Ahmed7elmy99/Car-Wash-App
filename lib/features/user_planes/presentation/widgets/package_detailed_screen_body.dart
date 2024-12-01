import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/utils/helpers.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/user_planes/data/model/single_plan_info_model.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/cubits/packages_cubit/packages_cubit.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/widgets/plan_info_service_items_widget.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';

class PackageDetailedScreenBody extends StatelessWidget {
  const PackageDetailedScreenBody({super.key, required this.packageModel});

  final SinglePlanInfoModel packageModel;
  @override
  Widget build(BuildContext context) {
    final cubit = PackagesCubit.get(context);
    return SizedBox(
      width: AppScreenUtils.w,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 10.sp,
              start: 27.sp,
            ),
            child:
                Text(packageModel.name, style: AppTextStyles.kBlack15FontW700),
          ),
          SizedBox(height: 12.h),
          Expanded(
              child: Container(
            margin: EdgeInsets.symmetric(horizontal: 27.sp, vertical: 15.sp),
            // padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 10.sp),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.sp),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "${double.parse(packageModel.price).floor()}/", // Displays price with currency
                          style: AppTextStyles.black12FontPoppinsW700,
                        ),
                        TextSpan(
                          // Displays duration (e.g., monthly)
                          text:
                              "${"rial".tr}.${Helpers.convertTimeToPeriod(int.parse(packageModel.packageTime))}",
                          style: AppTextStyles.blackText16FontW700,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12.sp),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.sp),
                  child: Text(
                    "${"expiry_date".tr}: ${packageModel.endDate}", // Displays expiry date
                    style: AppTextStyles.kInterDarkBlueGrey10Font400,
                  ),
                ),
                SizedBox(height: 30.sp),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.sp),
                  child: HtmlWidget(packageModel.description),
                ),
                SizedBox(height: 30.sp),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.sp),
                  child: Text("services".tr,
                      style: AppTextStyles.kBlack24FontW700),
                ),
                Expanded(
                    child:
                        PlanInfoServiceItemsWidget(packageModel: packageModel)),
                SizedBox(height: 12.sp),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: _renew_button_widget(
                      cubit: cubit, packageModel: packageModel),
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

class _renew_button_widget extends StatelessWidget {
  const _renew_button_widget({
    required this.cubit,
    required this.packageModel,
  });

  final PackagesCubit cubit;
  final SinglePlanInfoModel packageModel;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PackagesCubit, PackagesState>(
      listener: (context, state) {
        if (state is RenewUserPlanFailure) {
          state.error.showError(context);
        }
      },
      builder: (context, state) {
        return CustomButton(
          color: Colors.black, // Button color
          boarderRadius: 10.r, // Rounded corners
          width: 374.w,
          onTap: () {
            cubit.renewUserPlan(id: packageModel.id);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 14.h),
            child: state is RenewUserPackagesLoading
                ? Center(
                    child: SizedBox(
                      height: 22.h,
                      width: 22.h,
                      child: const CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                  )
                : Center(
                    child: Text(
                      'renew_package'.tr,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
          ), // Handle renew action
        );
      },
    );
  }
}
