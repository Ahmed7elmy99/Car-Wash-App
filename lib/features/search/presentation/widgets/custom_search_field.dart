import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/features/search/presentation/cubit/search_cubit.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomSearchField extends StatefulWidget {
  final String searchQuery;
  const CustomSearchField({super.key, required this.searchQuery});

  @override
  _CustomSearchFieldState createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  final TextEditingController searchController = TextEditingController();
  // List<String> _suggestions = []; // List to hold suggestions
  // final List<String> _allSuggestions = [
  //   'Car Wash',
  //   'Car Detailing',
  //   'Interior Cleaning',
  //   'Engine Wash',
  //   'Tire Service',
  //   'تنظيف شامل',
  //   'تنظيف سيارة vip',
  //   'تنظيف سيارة عادي',
  // ];

  @override
  void initState() {
    super.initState();
    // Set the initial text for the searchController from the searchQuery
    searchController.text = widget.searchQuery;
    // Optionally, filter suggestions based on the initial query
    // _suggestions = _allSuggestions
    //     .where((suggestion) =>
    //         suggestion.toLowerCase().contains(widget.searchQuery.toLowerCase()))
    //     .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: const Color(0xffE8E8E8), width: 1.5),
          ),
          child: Column(
            children: [
              TextFormField(
                cursorColor: ColorName.blackColor,
                onFieldSubmitted: (value) {
                  if (value.isEmpty) {
                    return;
                  } else {
                    BlocProvider.of<SearchCubit>(context).getSearch(value);
                  }
                  // _suggestions.clear();
                  setState(() {});
                },
                controller: searchController,
                style: AppTextStyles.kBlack13FontW700,
                decoration: InputDecoration(
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorName.green, width: 1),
                  ),
                  contentPadding: const EdgeInsets.all(18),
                  prefixIcon: Container(
                    margin: EdgeInsets.all(15.h),
                    width: 20.sp,
                    height: 20.sp,
                    child: Assets.images.searchIcon.image(
                      fit: BoxFit.cover,
                    ),
                  ),
                  hintText: "search_title".tr,
                  hintStyle: AppTextStyles.kBlack14FontW400,
                  suffixIcon: GestureDetector(
                    child: Container(
                      margin: EdgeInsets.all(6.h),
                      width: 24.sp,
                      height: 24.sp,
                      child: Assets.images.closeRounded.image(
                        fit: BoxFit.cover,
                      ),
                    ),
                    onTap: () {
                      // _suggestions.clear();
                      searchController.text = '';
                      setState(() {});
                    },
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    // Filter suggestions based on user input
                    // _suggestions = _allSuggestions
                    //     .where((suggestion) => suggestion
                    //         .toLowerCase()
                    //         .contains(value.toLowerCase()))
                    //     .toList();
                  });
                },
              ),
              // SuggestionsListView(
              //     suggestions: _suggestions, searchController: searchController)
            ],
          ),
        ),
        // Show suggestions if available
        // if (_suggestions.isNotEmpty)
        //   Container(
        //     margin: EdgeInsets.only(top: 10.h),
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.circular(6),
        //       boxShadow: [
        //         BoxShadow(
        //           color: Colors.black.withOpacity(0.1),
        //           blurRadius: 4,
        //           offset: const Offset(0, 2),
        //         ),
        //       ],
        //     ),
        //   ),
      ],
    );
  }
}
