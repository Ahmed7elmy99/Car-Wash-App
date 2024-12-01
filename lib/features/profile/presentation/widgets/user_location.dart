/*
created by : Mohamed Waleed
created at : 12/10/2024
This widget represents the ProfileInfoSection, which is used to show the user's profile and details (name, image, location).

change the size of location Icon
*/

import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///The UserLocation class is a stateless widget that displays a user's location information.
///It takes in a [location] parameter that represents the user's location in English.
///It uses the [Assets] package to load the location icon image and the [Text] widget to display the location details.

class UserLocation extends StatelessWidget {
  const UserLocation({super.key, required this.location});

  final String location;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        top: 13.h,
        bottom: 36.h,
      ), // Padding around location details
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.center, // Center-aligns the location details
        children: [
          Assets.images.locationIconFilled
              .svg(width: 25.w, height: 25.w), // Location icon
          SizedBox(width: 4.w), // Spacing between the icon and text
          Text(
            location, // User's location in English
            style: AppTextStyles
                .kDarkBrown13InterFontW500, // Style for the user's location
          ),
        ],
      ),
    );
  }
}
