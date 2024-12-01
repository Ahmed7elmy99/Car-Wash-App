/*
edited by: Mohamed Waleed
edited at : 16/10/2024
edits :
using expansion widget instead of column for list tile it is more easier to use instead of column 
 */
import 'package:car_wash_mobile_app/core/widgets/shimmer_plan_item.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/cubits/packages_cubit/packages_cubit.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/profile_plans_list_item.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/cubits/packages_cubit/packages_cubit.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///The [ProfilePlanesList] class is a stateful widget that represents a list of plans, with an optional list of [PlanModel] objects as a property.
class ProfilePlanesList extends StatefulWidget {
  const ProfilePlanesList({
    super.key,
  });

  @override
  State<ProfilePlanesList> createState() => _ProfilePlanesListState();
}

class _ProfilePlanesListState extends State<ProfilePlanesList> {
  //it represents the colors of the plans
  List<Color> colorsOfPlans = [
    ColorName.greenish,
    ColorName.lightMintGreenColor,
    ColorName.verylightyellowshade,
  ];
  List<Color> buttonsColors = [
    ColorName.verylightgreen,
    ColorName.lightBlueColor,
    ColorName.silverGrey,
  ];
  late PackagesCubit cubit;
  @override
  void initState() {
    super.initState();
    cubit = PackagesCubit.get(context);
  }

  @override

  /// Builds the UI for displaying a list of plans in an ExpansionWidget.
  ///
  /// The ExpansionWidget displays each plan's name, price, expiration date, and package details.
  /// It allows users to expand and collapse each plan to view more details.
  /// Tapping on a plan triggers an expansion animation to show the plan details.
  Widget build(BuildContext context) {
    return BlocConsumer<PackagesCubit, PackagesState>(
      listener: (context, state) {
        if (state is AllPlansError) {
          state.error.showError(context);
        }
      },
      builder: (context, state) {
        return state is AllPlansSuccess
            ? Container(
                width: double.infinity,
                color: Colors.transparent,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final plan = cubit.allPlansList[index];
                    final color = colorsOfPlans[index % 3];
                    final buttonColor = buttonsColors[index % 3];
                    return ProfilePlanListItem(
                      plan: plan,
                      color: color,
                      buttonColor: buttonColor,
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 12.h),
                  itemCount: state.allPlans.length,
                ),
              )
            : Container(
                width: double.infinity,
                color: Colors.transparent,
                child: const ShimmerPlanItem(),
              );
      },
    );
  }
}
