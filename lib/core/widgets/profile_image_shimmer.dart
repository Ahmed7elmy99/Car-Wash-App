/*
created by : Mohamed Waleed
created at : 12/10/2024
This widget represents the ProfileScreenBody, which is used to show the user's profile and details (name, image, location),
and contains tabs for packages and reservations.

edited by : Mohamed Waleed 
edited at : 19/10/2024
edits :
use NestedScrollView instead of CustomScrollView because we don't want to make a scrollable view in the body just scroll the whole screen to provide better user experience  
*/

import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ProfileImageShimmer extends StatelessWidget {
  const ProfileImageShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      enabled: true,
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        width: 143.w, // Width of the profile photo container
        height: 143.h, // Height of the profile photo container
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle, // Circular shape
          border: Border.all(
            color: ColorName
                .mintGreen, // Border color matching background
          ),
        ),
      ),
    );
  }
}
