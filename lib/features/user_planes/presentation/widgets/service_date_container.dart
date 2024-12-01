// Edited by: nadeen mohamed
// Edited at date: 24/10/2024
// Edit note: remove views folder and move widgets folder in presentation folder and
// Use the correct imports
import 'dart:developer';

import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/calendar_bottom_sheet.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

// create choose date widget (by nadeen (13/10/2024))
// Edited by nadeen
// Edited at : 15/10/2024
// Convert the widget to stateful
// This widget contains the container of choosing date and show the selected date
class ServiceDateContainer extends StatefulWidget {
  const ServiceDateContainer({super.key, required this.onfinsh});
  final Function(DateTime date) onfinsh;
  @override
  State<ServiceDateContainer> createState() => _ChooseDateWidgetState();
}

class _ChooseDateWidgetState extends State<ServiceDateContainer> {
  // Edited by: nadeen
  // Edited at date: 15/10/2024
  // Edit note: create DateTime variable
  DateTime? selectedDate;

  // Edited by: nadeen
  // Edited at date: 15/10/2024
  // Edit Note:  Callback to update the selected date
  void updateSelectedDate(DateTime newDate) {
    setState(() {
      selectedDate = newDate;
    });
    widget.onfinsh(newDate);
  }

  @override
  Widget build(BuildContext context) {
    // Edited by: nadeen mohamed
    // Edited at: 15/10/2024
    // Edit note: add padding widget
    return GestureDetector(
      onTap: () {
        // Edited by: nadeen mohamed
        // Edit at date: 15/10/2024
        // Edit note: Open calendar bottom sheet and pass the callback function
        calendarBottomSheet(context, updateSelectedDate);
      },
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
            // Edited by: Nadeen Mohamed
            // Edited at date: 20/10/2024
            // Edit note: Use ScreenUtil in borderRadius
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: ColorName.black2.withOpacity(0.05),
            )),
        child: Padding(
          // Edited by: Nadeen Mohamed
          // Edited at date: 20/10/2024
          // Edit note: Use ScreenUtil in padding
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  // Edited by: Ghaith
                  // Edited at date: 5/11/2024
                  // Edit note: change the path of the iconto take the svg icon
                  Assets.images.calendarSvg.path,
                  // Edited by: nadeen mohamed
                  // Edited at date: 17/10/2024
                  // Edit note: change width and height for icon to be responsive
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              const Spacer(),
              Text(
                // Edited by: nadeen mohamed
                // Edited at: 15/10/2024
                // Edit note: change text according to the selected date
                selectedDate != null
                    ? '${selectedDate!.day}-${selectedDate!.month}-${selectedDate!.year}'
                    : 'choose_date'.tr, // Show selected date or 'choose date'
                style: AppTextStyles.kBlack12FontW400,
              ),
              // Edited by: Nadeen Mohamed
              // Edited at: 17/10/2024
              // Edit note: make width and height for the image
              IconButton(
                onPressed: () {
                  calendarBottomSheet(context, updateSelectedDate);
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 20.r,
                  color: ColorName.mintGreen,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
