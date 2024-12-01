/*
created by : Mohamed Waleed 
created at : 14/10/2024
is used to show the available plans for the user to choose from them

edited by : Mohamed Waleed
edited at : 16/10/2024
edits : 
rename the bottom sheet to PlansBottomSheet
*/

import 'package:car_wash_mobile_app/features/user_planes/presentation/cubits/packages_cubit/packages_cubit.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/profile_planes_list.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/cubits/packages_cubit/packages_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/utils/app_utils.dart';

/// [PlansBottomSheet] is a widget that displays a bottom sheet for users
/// to select a package plan. It shows available plans along with their
/// details and allows the user to choose an appropriate plan.
class PlansBottomSheet extends StatefulWidget {
  const PlansBottomSheet({super.key});

  @override
  State<PlansBottomSheet> createState() => _PlansBottomSheetState();
}

class _PlansBottomSheetState extends State<PlansBottomSheet> {
  late PackagesCubit packagesCubit;
  @override
  void initState() {
    packagesCubit = PackagesCubit.get(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Padding to avoid keyboard overlap if the bottom sheet is expanded
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SizedBox(
        width: AppScreenUtils.w, // Set the width based on screen size
        child: SingleChildScrollView(
          child: Column(
            // Use mainAxisSize.min to size the column to its children's size
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Close button to dismiss the bottom sheet
                  IconButton(
                    icon: Icon(
                      Icons.close_rounded,
                      size: 24.sp, // Responsive size using screen util
                    ),
                    onPressed: () {
                      Navigator.pop(context); // Close the bottom sheet
                    },
                  ),
                ],
              ),
              Text(
                "choose_plan".tr, // Translated title for plan selection
                style: AppTextStyles.kBlack24FontW700,
              ),
              SizedBox(height: 4.h),
              Text(
                "choose_appropriate_plan".tr, // Instruction to choose a plan
                textAlign: TextAlign.center,
                style: AppTextStyles.kGrayWithOpacity5015FontW400,
              ),
              SizedBox(height: 30.h),
              // List of packages displayed in a scrollable list
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child:
                    const ProfilePlanesList(), // Displaying the list of plans
              ),
              const SizedBox(height: 34), // Space at the bottom of the sheet
            ],
          ),
        ),
      ),
    );
  }
}
