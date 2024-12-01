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
import 'package:car_wash_mobile_app/features/plans/presentation/widgets/planes_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlansScreenBody extends StatelessWidget {
  const PlansScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Edited by: Nadeen Mohamed
          // Edited at date: 21/11/2024
          //  Edite note: remove plans text
          SizedBox(height: 23.h),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: PlanesList(),
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
