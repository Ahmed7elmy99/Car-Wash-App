/*
 * Created by: Mohamed Waleed
 * Created at: 19/10/2024
 *
 * This widget represents the Plans screen in the application, where users can view available
 * subscription plans. It displays a list of plans, including their details such as name, price,
 * expiration date, and associated features.
 * 
 * The widget includes:
 * - An AppBar with a custom back button for navigation.
 * - A title indicating the purpose of the screen, translated based on the user's language preference.
 * - A list of plans presented in a `PlanesList` widget, showcasing the available subscription options.
 * 
 * The `PlansScreen` utilizes:
 * - Flutter's `Column` widget to arrange child elements vertically.
 * - `GetX` for internationalization (i18n) by using the `.tr` extension on strings.
 * - The `PlanModel` class to define the properties of each subscription plan.
 * 
 * Example usage:
 * ```
 * Widget build(BuildContext context) {
 *   return const PlansScreen();
 * }
 * ```
 */

import 'package:car_wash_mobile_app/core/widgets/shimmer_plan_item.dart';
import 'package:car_wash_mobile_app/features/plans/presentation/cubits/plans_cubit/plans_cubit.dart';
import 'package:car_wash_mobile_app/features/plans/presentation/widgets/plan_list_item.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///The [PlanesList] class is a stateful widget that represents a list of plans, with an optional list of [PlanModel] objects as a property.
class PlanesList extends StatefulWidget {
  const PlanesList({
    super.key,
  });

  @override
  State<PlanesList> createState() => _PlanesListState();
}

class _PlanesListState extends State<PlanesList> {
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
  late PlansCubit cubit;
  @override
  void initState() {
    super.initState();
    cubit = PlansCubit.get(context);
  }

  @override

  /// Builds the UI for displaying a list of plans in an ExpansionWidget.
  ///
  /// The ExpansionWidget displays each plan's name, price, expiration date, and package details.
  /// It allows users to expand and collapse each plan to view more details.
  /// Tapping on a plan triggers an expansion animation to show the plan details.
  Widget build(BuildContext context) {
    return BlocConsumer<PlansCubit, PlansState>(
      listener: (context, state) {
        if (state is PlansError) {
          state.error.showError(context);
        }
      },
      builder: (context, state) {
        return state is PlansSuccess
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
                    return PlanListItem(
                      plan: plan,
                      color: color,
                      buttonColor: buttonColor,
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 12.h),
                  itemCount: state.plans.length,
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
