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

import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/features/plans/presentation/cubits/cubit/add_plan_to_cart_cubit.dart';
import 'package:car_wash_mobile_app/features/plans/presentation/cubits/plans_cubit/plans_cubit.dart';
import 'package:car_wash_mobile_app/features/plans/presentation/widgets/plans_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PlansScreen extends StatelessWidget {
  const PlansScreen({super.key});
  static String id = "/plans";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        automaticallyImplyLeading: false, // added by omnia [26/11/2024]
        scrolledUnderElevation: 0,
        // Edited by: Nadeen Mohamed
        // Edited at date: 21/11/2024
        // Edite note: remove customBackButton and Add Text for planes
        title: Padding(
    padding: EdgeInsetsDirectional.only(top: 10.sp, start: 15.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "planes".tr,
                style: AppTextStyles.kBlack15FontW700,
              ),
            ],
          ),
        ),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PlansCubit()..getAllPlans(),
          ),
          BlocProvider(
            create: (context) => AddPlanToCartCubit(),
          )
        ],
        child: const PlansScreenBody(),
      ),
    );
  }
}
