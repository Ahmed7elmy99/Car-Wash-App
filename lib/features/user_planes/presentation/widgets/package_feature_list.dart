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

refactor code and extract features list as a feature called [PackageFeatureList]
 */

import 'package:car_wash_mobile_app/core/models/my_plans/user_plans_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class PackageFeatureList extends StatelessWidget {
  const PackageFeatureList({
    super.key,
    required this.packageModel,
  });

  final UserPlansModel packageModel;

  @override
  Widget build(BuildContext context) {
    return HtmlWidget(packageModel.description);
  }
}
  // return Column(
  //     children: List.generate(
  //       3,
  //       (index) {
  //         return Padding(
  //           padding: EdgeInsets.symmetric(vertical: 9.5.h),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: [
  //               Assets.images.checkIcon
  //                   .svg(width: 22.w, height: 22.w), // Checkmark icon
  //               SizedBox(width: 13.w),
  //               Text(
  //                 "",
  //                 // packageModel
  //                 //     .packageDetails[index].tr, // Displays each package detail
  //                 style: AppTextStyles.kBlack12FontW400,
  //               ),
  //             ],
  //           ),
  //         );
  //       },
  //     ),
  //   );