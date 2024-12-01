import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// Created By:Abdullah Ghaith
// Create Date (21/10/2024)
//create note : Drop down menu for the add address Screen
class AddAddressDropdown extends StatefulWidget {
  String? selectedCity;

  AddAddressDropdown({super.key, this.selectedCity});

  @override
  _AddAddressDropdownState createState() => _AddAddressDropdownState();
}

class _AddAddressDropdownState extends State<AddAddressDropdown> {
  bool isExpanded = false;
  bool selectedCityHintColor = false;
  final List<String> cities = [
    'City 1',
    'City 2',
    'City 3',
    'City 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Padding for the content inside TextFormField only
        TextFormField(
          readOnly: true,
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          decoration: InputDecoration(
            hintText: widget.selectedCity ?? "city".tr,
            hintStyle: selectedCityHintColor
                ? AppTextStyles.kBlack11FontW400
                : AppTextStyles.kBlack12FontW400,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 14.w), // Padding for the prefix icon
              child: ImageIcon(
                AssetImage(Assets.images.addressLabel1.path),
                color: ColorName.mintGreen,
                size: 16.sp,
              ),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 8.w), // Padding for the suffix icon
              child: SizedBox(
                width: 8.1.w,
                height: 14.1.h,
                child: isExpanded
                    ? Image.asset(
                        Assets.images.keyboardArrowUpIcon.path,
                        fit: BoxFit.none,
                        color: ColorName.black2,
                      )
                    : Image.asset(
                        Assets.images.keyboardArrowDownIcon.path,
                        fit: BoxFit.none,
                        color: const Color(0xff131313),
                      ),
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
                vertical: 17.h), // Padding inside the TextFormField
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: BorderSide(
                color: ColorName.grey.withOpacity(0.1),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: BorderSide(
                color: ColorName.grey.withOpacity(0.1),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: BorderSide(
                color: ColorName.grey.withOpacity(0.1),
              ),
            ),
          ),
        ),

        if (isExpanded)
          const Divider(
            color: Colors.green,
            thickness: 1.5,
            height: 0,
          ),

        // Padding for the dropdown items only
        if (isExpanded)
          Container(
            padding: EdgeInsets.symmetric(
                vertical: 10.h), // Inner padding for the dropdown list items
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              children: cities.map((car) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      widget.selectedCity = car;
                      isExpanded = false;
                      selectedCityHintColor = true;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 12.sp,
                        horizontal: 10.sp), // Padding for each dropdown item
                    child: Row(
                      children: [
                        Text(car, style: AppTextStyles.kBlack11FontW400),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
      ],
    );
  }
}
