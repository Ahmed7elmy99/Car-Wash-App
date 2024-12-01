/*
created by : Mohamed Waleed
created at : 12/10/2024

is used to show the package details
It accepts a package model as a parameter to display its details.

edited by : Mohamed Waleed 
edited at : 19/10/2024
edits : 

use in the content of the expansion widget column instead of listview becuase it will not be scrollable
and it was making a bug related to mess use of the parent widget because of using flexible with column

 */

import 'dart:math' as math;

import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/my_plans/user_plans_model.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/utils/helpers.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/cubits/profile_add_plan_to_cart_cubit/profile_add_plan_to_cart_cubit.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/cubits/packages_cubit/packages_cubit.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/screen/package_detailed_screen.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/widgets/package_feature_list.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/plans_bottom_sheet.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart' as math;
import 'package:go_router/go_router.dart';

/// [UserPackageExpansionWidget] is used to show the package details
/// It accepts a package model as a parameter to display its details.
class UserPackageExpansionWidget extends StatefulWidget {
  const UserPackageExpansionWidget({
    super.key,
    required this.packageModel, // Required parameter to show the details of the selected package
    // Determines if the widget is initially expanded
    this.initiallyExpanded = false,
  });

  final UserPlansModel packageModel; // The package model containing details
  final bool initiallyExpanded;
  @override
  State<UserPackageExpansionWidget> createState() =>
      _UserPackageExpansionWidgetState();
}

class _UserPackageExpansionWidgetState
    extends State<UserPackageExpansionWidget> {
  late PackagesCubit cubit;
  @override
  void initState() {
    cubit = PackagesCubit.get(context);
    super.initState();
  }

  // Whether the widget starts in an expanded state
  @override
  Widget build(BuildContext context) {
    // Creates the ExpansionWidget to show the package details
    return ExpansionWidget(
      initiallyExpanded:
          widget.initiallyExpanded, // Controls the initial expanded state
      titleBuilder: (animationValue, easeInValue, isExpanded, toggleFunction) {
        // Builds the title of the expansion widget
        return ListTile(
          leading: Transform.rotate(
            // Rotates the arrow icon based on expansion state
            angle: math.pi * animationValue,
            child: _buildTileArrow(),
          ),
          title: Text(
            widget.packageModel.name.tr,
            style: AppTextStyles.blackText16FontW700,
          ), // Displays the package name
          // Container that shows if the package is active or not
          trailing: _buildActivePackageStatusIndicator(),
          onTap: toggleFunction, // Toggles the expansion state on tap
        );
      },
      content: InkWell(
        onTap: () => context.pushNamed(PackageDetailedScreen.id,
            extra: {"model": widget.packageModel , "cubit" :cubit }),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.h, bottom: 18.h),
              // RichText to display price and duration with different styles
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "${double.parse(widget.packageModel.price).floor()}${"rial".tr}", // Displays price with currency
                      style: AppTextStyles.kBlack25FontW700,
                    ),
                    TextSpan(
                      text: " / ",
                      style: AppTextStyles.blackText16FontW700,
                    ),
                    TextSpan(
                      // Displays duration (e.g., monthly)
                      text: Helpers.convertTimeToPeriod(
                          widget.packageModel.packageTime),
                      style: AppTextStyles.blackText16FontW700,
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "${"expiry_date".tr}: ${widget.packageModel.endDate}", // Displays expiry date
              style: AppTextStyles.kBlack12FontW400,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 23.h),
              child: Divider(
                color: ColorName.silverGrey, // Divider between sections
                indent: 22.w,
                endIndent: 37.w,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 20.w,
                top: 23.h,
                bottom: 33.h,
              ),
              child: PackageFeatureList(packageModel: widget.packageModel),
            ),
            // Button to renew the package
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: BlocConsumer<PackagesCubit, PackagesState>(
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
                      cubit.renewUserPlan(id: widget.packageModel.id);
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
              ),
            ),
            SizedBox(height: 9.h),
            // Button to change the package
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: CustomButton(
                color: Colors.white, // Button color
                boarderRadius: 10.r, // Rounded corners
                width: 374.w,
                title: "change_plan".tr, // Change plan button text
                titleTextStyle: AppTextStyles.kBlack14FontW700,
                onTap: () {
                  // Show modal bottom sheet for changing packages
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.white,
                    builder: (context) {
                      return MultiBlocProvider(
                        providers: [
                          BlocProvider.value(
                            value: cubit..getAllPlans(),
                          ),
                          BlocProvider(
                            create: (context) => ProfileAddPlanToCartCubit(),
                            child: const PlansBottomSheet(),
                          )
                        ],
                        child: const PlansBottomSheet(),
                      );
                      // Bottom sheet for package options
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Builds a [Container] that displays the status of the package as active or inactive.
  ///
  /// The container has a width of [90.w] and padding of [25] on the left and right sides.
  /// The vertical padding is [0] if the device is a tablet and [17] if it is a phone.
  /// The container has a background color of [ColorName.lightgreen] and a border radius of [9.r].
  ///
  /// The child of the container is a [Text] widget that displays the status of the package.
  /// The text is centered and has a style of [AppTextStyles.kBlack12FontW700].
  ///
  /// If the package is active, the text is "active".tr, otherwise it is 'inactive'.tr.
  Container _buildActivePackageStatusIndicator() {
    return Container(
      width: 90.w,
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 25,
        vertical: AppScreenUtils.isTablet ? 0 : 17,
      ),
      decoration: BoxDecoration(
        color: ColorName.lightgreen, // Background color for the status
        borderRadius: BorderRadius.circular(9.r), // Rounded corners
      ),
      child: Center(
        child: Text(
          widget.packageModel.isActive.toString() == "1"
              ? "active".tr
              : 'inactive'.tr, // Shows active/inactive status
          style: AppTextStyles.kBlack12FontW700,
        ),
      ),
    );
  }

  /// Builds and returns an [Icon] widget representing the arrow icon for the expansion state.
  /// The arrow points up if the widget is expanded, and down if it is collapsed.
  /// It uses [Icons.keyboard_arrow_up_rounded] for expansion and [Icons.keyboard_arrow_down_rounded] for collapse.
  /// The icon has a color of [Colors.black] and a size of [25.sp].
  Icon _buildTileArrow() {
    return Icon(
      widget.initiallyExpanded
          ? Icons.keyboard_arrow_up_rounded // Arrow pointing up if expanded
          : Icons
              .keyboard_arrow_down_rounded, // Arrow pointing down if collapsed
      color: Colors.black,
      size: 25.sp,
    );
  }
}
