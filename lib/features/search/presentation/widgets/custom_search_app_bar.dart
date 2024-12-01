import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("search_title".tr, style: AppTextStyles.kBlack15FontW700),
        const Spacer(),
        //Edit By : Abdullah Ghaith
        //Edit Date : 14/10/2024
        //Edit Note :  Added GestureDetector to close the search screen
        GestureDetector(
          onTap: () {
            context.pop();
          },
          child: ImageIcon(
            //Edit By : Abdullah Ghaith
            //Edit Date : 14/10/2024
            AssetImage(Assets.images.close.path),
            size: 12.01.sp,
          ),
        )
      ],
    );
  }
}
