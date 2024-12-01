/// creted by naira ali [29/10/2024]
library;
import 'package:car_wash_mobile_app/core/models/all_plans/all_plans_model.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/profile_planes_list.dart';
import 'package:car_wash_mobile_app/features/home/presentation/cubit/all_plans/all_plans_cubit.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/plans/home_plan_list_item.dart';
import 'package:car_wash_mobile_app/core/widgets/shimmer_plan_item.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///The [ProfilePlanesList] class is a stateful widget that represents a list of plans, with an optional list of [PlanModel] objects as a property.

class HomePlanesList extends StatefulWidget {
  const HomePlanesList({
    super.key,
  });

  @override
  State<HomePlanesList> createState() => _HomePlanesListState();
}

class _HomePlanesListState extends State<HomePlanesList> {
  late AllPlansCubit allPlansCubit;

  @override
  void initState() {
    allPlansCubit = BlocProvider.of(context);
    super.initState();
  }

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

  /// Builds the UI for displaying a list of plans in an ExpansionWidget.
  ///
  /// The ExpansionWidget displays each plan's name, price, expiration date, and package details.
  /// It allows users to expand and collapse each plan to view more details.
  /// Tapping on a plan triggers an expansion animation to show the plan details.

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AllPlansCubit, AllPlansState>(
      listener: (context, state) {
        print('Current state: $state'); // Log the current state
        if (state is AllPlansLoading) {
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::state is Services Loading");
        } else if (state is AllPlansSuccess<List<AllPlansModel>>) {
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::state is Services Success");
        } else if (state is AllPlansError) {
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::state is Services Error");
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
                    final plan = state.allPlans[index];
                    final color = colorsOfPlans[index % 3];
                    final buttonColor = buttonsColors[index % 3];
                    return HomePlanListItem(
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
                child: const ShimmerPlanItem());
      },
    );
  }
}
