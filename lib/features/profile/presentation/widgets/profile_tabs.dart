/*
created by : Mohamed Waleed
created at : 12/10/2024
edited by : Mohamed Waleed
edited at : 14/10/2024

This widget represents ProfileTabs, which is used to show a tab bar with three tabs for user details, user reservations, and packages.

Edits: 
PackagesList was created.
- add clarfications about some lines
*/

import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/cubits/packages_cubit/packages_cubit.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/widgets/packages_list.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/user_details_tab.dart';
import 'package:car_wash_mobile_app/features/reservation/api_services/reservation_api_services.dart';
import 'package:car_wash_mobile_app/features/reservation/data/repo/reservation_repo.dart';
import 'package:car_wash_mobile_app/features/reservation/logic/cubit/reservation_cubit.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/cubits/packages_cubit/packages_cubit.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/widgets/packages_list.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/utils/app_utils.dart';
import '../../../reservation/presentation/widgets/reservation_list.dart';

class ProfileTabs extends StatelessWidget {
  /// [ProfileTabs] is a widget that displays a tab bar with three tabs for user details, user reservations, and packages.
  const ProfileTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // The number of tabs
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
            // Remove splash color when pressing on the tabs
            overlayColor: const WidgetStatePropertyAll(Colors.transparent),
            dividerColor: ColorName.lightCyan,
            indicatorColor: ColorName.mintGreen,
            indicatorSize: TabBarIndicatorSize.tab,
            // Styles as needed by the UI Design
            labelStyle: AppTextStyles.kMintGreen14FontW700,
            unselectedLabelStyle: AppTextStyles.kBlueGray12FontW400,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 24.w),
            indicatorWeight: 1,
            labelPadding:
                EdgeInsets.only(bottom: AppScreenUtils.isTablet ? 17.h : 0),
            tabs: [
              Tab(text: "my_data".tr), // Tab for user details
              Tab(text: "my_reservations".tr), // Tab for user reservations
              Tab(text: "packages".tr), // Tab for packages
            ],
          ),
          // Expanded widget to make TabBarView take up all available height
          Expanded(
            child: TabBarView(
              children: [
                // Displays user details
                const UserDetailsTab(),
                // Adds padding above the reservation list
                Padding(
                  padding: EdgeInsets.only(top: 32.h),
                  child: BlocProvider(
                    create: (context) => ReservationCubit(
                        ReservationRepo(ReservationApiServices())),
                    child: const ReservationList(
                      physics: NeverScrollableScrollPhysics(),
                    ),
                  ), // Displays user reservations
                ),
                BlocProvider(
                  create: (context) => PackagesCubit()..getUserPlans(),
                  child: const PackagesList(),
                ), // Displays available packages
              ],
            ),
          ),
        ],
      ),
    );
  }
}
