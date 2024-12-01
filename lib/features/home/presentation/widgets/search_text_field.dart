import 'package:car_wash_mobile_app/features/search/presentation/search_screen.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
// Edited by: Nadeen Mohamed
// Edited at date: 9/11/2024
// Edit note: remove LocationSection widget and add the correct SearchTextField
class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key, required this.searchController});

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          //Edit By : Abdullah Ghaith
          //Edit Date : 14/10/2024
          //Edit Note : Added onFieldSubmitted to navigate to search screen when the
          //user submits the search query in the text field

          onFieldSubmitted: (value) {
            context.pushNamed(
              SearchScreen.id,
              extra: {'searchQuery': value},
            );
          },
          cursorColor: ColorName.green,
          controller: searchController,
          decoration: InputDecoration(
            hintText: 'search_about_service'.tr,
            hintStyle: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: ColorName.grey.withOpacity(0.5),
            ),
            prefixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  Assets.images.homeSearchIcon.path,
                  height: 20.h,
                  width: 20.w,
                  fit: BoxFit.contain,
                )),
            prefixIconColor: ColorName.grey,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: const BorderSide(color: ColorName.lightGrayColor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: const BorderSide(color: ColorName.lightGrayColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: const BorderSide(color: ColorName.lightGrayColor)),
          ),
        ),
        SizedBox(height: 19.h),
      ],
    );
  }
}
