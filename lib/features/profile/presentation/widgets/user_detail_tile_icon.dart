/*
created by : Mohamed Waleed 
created at : 12/10/2024
edited by : Mohamed Waleed
edited at : 16/10/2024
edits :
- remove bottom padding from the user details list to solve the conflict with the bottom navigation bar
___________________________________________________________________________________________________________________
edited by : Mohamed Waleed
edited at : 19/10/2024
edits :
- using column and list.generate instead of ListView because we don't need it to be scrollable
 */

import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UserDetailTileIcon extends StatelessWidget {
  const UserDetailTileIcon({
    super.key,
    required this.icon,
  });
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //make the bigger size it can reach is 20 and keep data aligned vertically
      width: 20.w,
      child: Transform.scale(
        //we want to make the icon to be more bigger on tablet and keep the same size on mobile
        scale: AppScreenUtils.isTablet ? 1.5 : 1,
        child: icon.paddingAll(0),
      ),
    );
  }
}
