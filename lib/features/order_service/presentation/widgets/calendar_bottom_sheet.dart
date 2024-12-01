// Edited by nadeen
// Edited at: 20/10/2024
// Edit note: remove unused code which was commented
import 'dart:developer';

import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

// Edited by: nadeen mohamed
// Edited at date:  15/10/2024
// This file contains the bottom sheet of calendar
const monthNames = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];

Future<dynamic> calendarBottomSheet(BuildContext context,
    Function(DateTime) onDateConfirmed // Callback to confirm the date
    ) {
  // edit by nadeen at 15/10/2024
  //edit note: Make variables of selected and focused day
  // Edited by: Nadeen Mohamed
  // Edited at date: 21/11/2024
  // Edite note: create _selectedDay, _focusedDay
  DateTime _selectedDay = DateTime.now(); // Track the selected date
  DateTime _focusedDay = DateTime.now(); // Track the focused day

  /**
   * edit: gave width to the bottom sheet with Box constrains
   * make the text and all sizes responsive
   * edit by :Naira Ali
   * edite at:
   *17/10/2024
   */

  return showModalBottomSheet(
    // Edited by: nadeen mohamed
    // Edited at date: 17/10/2024
    // Edit note: put backGround color and width to the bottom sheet
    isScrollControlled: true,
    backgroundColor: ColorName.white,
    constraints: const BoxConstraints(
      minWidth: double.infinity,
      // Edited by : Abdullah Ghaith
      // Edited at date: 19/10/2024
      // Edit note: Added a missing bracket "("
    ),
    context: context,
    builder: (BuildContext context) {
      return Padding(
        // Edited by : nadeen mohamed
        // Edited at date: 17/10/2024
        // Edit note: Use screenUtil(.w , .h) to padding
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        child: StatefulBuilder(
          // Use StatefulBuilder to manage state within the bottom sheet
          builder: (BuildContext context, StateSetter setState) {
            // Edited by: Nadeen Mohamed
            // Edited at date: 17/10/2024
            // Edit note: put height to the container
            // And change text style to be responsive
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: Column(
                          children: [
                            // Calendar Header
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(
                                        context); // Close bottom sheet
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    size: 24.r,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'choose_date'.tr,
                              style: AppTextStyles.kBlack24FontW700,
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              'service_data_prompt'.tr,
                              style: AppTextStyles.kBlack14FontW400
                                  .copyWith(color: ColorName.lightGreyOpacity),
                            ),

                            // TableCalendar widget
                            TableCalendar(
                              firstDay: DateTime.utc(2020, 1, 1),
                              lastDay: DateTime.utc(2030, 12, 31),
                              focusedDay:
                                  // Edited by: Nadeen Mohamed
                                  // Edited at date: 21/11/2024
                                  // Edite note: use _focusedDay variable
                                  _focusedDay, // Edit by nadeen at 15/10/2024 (use focusDay variable)
                              // Edited by nadeen
                              // Edited at date: 15/10/2024
                              // Edit note: check if the day is selected
                              selectedDayPredicate: (day) {
                                // Properly check if the day is selected
                                // Edited by: Nadeen Mohamed
                                // Edited at date: 21/11/2024
                                // Edite note: use _selectedDay variable
                                return isSameDay(_selectedDay, day);
                              },
                              // Edit by: nadeen mohamed
                              // Edit at date: 15/10/2024
                              // Edit note: update selected day
                              onDaySelected: (selectedDay, focusedDay) {
                                setState(() {
                                  // Edited by: Nadeen Mohamed
                                  // Edited at date: 21/11/2024
                                  // Edite note: use _selectedDay and _focusedDay variables
                                  _selectedDay =
                                      selectedDay; // Update selected day
                                  _focusedDay = focusedDay;
                                  log(""); // Update focused day
                                });
                              },

                              daysOfWeekStyle: DaysOfWeekStyle(
                                weekdayStyle: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: ColorName.lightGreyOpacity,
                                ),
                                weekendStyle: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: ColorName.lightGreyOpacity,
                                ),
                              ),

                              daysOfWeekHeight: 40.h,
                              headerStyle: HeaderStyle(
                                leftChevronMargin: const EdgeInsets.all(0),
                                rightChevronMargin: const EdgeInsets.all(0),
                                leftChevronPadding: EdgeInsets.only(
                                    right: 70.w, top: 10.h, bottom: 10.h),
                                rightChevronPadding: EdgeInsets.only(
                                    left: 70.w, top: 10.h, bottom: 10.h),
                                formatButtonVisible: false,
                                titleCentered: true,
                                titleTextStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: ColorName.darkBlueColor,
                                ),
                                titleTextFormatter: (date, locale) {
                                  return '${monthNames[date.month - 1]} - ${date.year}';
                                },
                                // Edited by: nadeen mohamed
                                // Edited at date: 20/10/2024
                                // Edit note: change the size of the icon using screenutil
                                leftChevronIcon: Icon(
                                  Icons.arrow_left_outlined,
                                  size: 40.r,
                                ),
                                // Edited by: nadeen mohamed
                                // Edited at date: 20/10/2024
                                // Edit note: change the size of the icon using screenutil
                                rightChevronIcon: Icon(
                                  Icons.arrow_right_outlined,
                                  size: 40.r,
                                ),
                              ),
                              calendarStyle: CalendarStyle(
                                // Edited by: nadeen mohamed
                                // Edited at date: 20/10/2024
                                // Edit note: pust const keyword and remove borderRadius
                                selectedDecoration: const BoxDecoration(
                                  color: ColorName.mintGreen,
                                  shape: BoxShape.rectangle,
                                ),
                                isTodayHighlighted: true,
                                selectedTextStyle: TextStyle(
                                  color: ColorName.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                ),
                                defaultTextStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: ColorName.black,
                                ),
                                outsideTextStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: ColorName.lightGreyOpacity,
                                ),
                                todayDecoration: BoxDecoration(
                                  color: ColorName.mintGreen
                                      .withOpacity(0.5), // Today’s highlight
                                  shape: BoxShape.rectangle,
                                  // Edited by: nadeen mohamed
                                  // Edited at date: 20/10/2024
                                  // Edit note: remove borderRadius
                                ),
                                todayTextStyle: TextStyle(
                                  color: ColorName.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),

                              calendarBuilders: CalendarBuilders(
                                // Custom builder for weekend days (Saturday and Sunday)
                                defaultBuilder: (context, day, focusedDay) {
                                  if (day.weekday == DateTime.saturday ||
                                      day.weekday == DateTime.sunday) {
                                    return Center(
                                      child: Text(
                                        '${day.day}', // Display the day number
                                        style: TextStyle(
                                          fontSize: 14
                                              .sp, // Custom font size for weekend numbers
                                          color: ColorName
                                              .black, // Color for weekend numbers
                                        ),
                                      ),
                                    );
                                  }
                                  return null; // Use default style for other days
                                },
                                dowBuilder: (context, day) {
                                  String dayName = day.weekday == 7
                                      ? 'SUN'
                                      : [
                                          'MON',
                                          'TUE',
                                          'WED',
                                          'THU',
                                          'FRI',
                                          'SAT'
                                        ][day.weekday - 1];
                                  return Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          dayName,
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color:
                                                  ColorName.lightGreyOpacity),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4.h,
                                      ),
                                      Divider(
                                        height: 1.h,
                                        color: ColorName.lightGreyDivider,
                                      )
                                    ],
                                  );
                                },
                              ),
                              // Edited by: nadeen mohamed
                              // Edited at date: 20/10/2024
                              // Edit note: change the height

                              // Edited by: Nadeen Mohamed
                              // Edited at date: 26/11/2024
                              // Edite note: change the height of row
                              rowHeight: 55.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Edited by: Nadeen Mohamed
                  // Edited at date: 15/10/2024
                  // Edit note: Confirm Date Button
                  GestureDetector(
                    onTap: () {
                      // Use the callback to send the selected date back
                      onDateConfirmed(_focusedDay);
                      Navigator.pop(context); // Close bottom sheet
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        color: ColorName.mintGreen,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.images.rightArrow.svg(),
                          SizedBox(width: 5.w),
                          Text(
                            'confirm_date'.tr,
                            style: AppTextStyles.kWhite12FontW700,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    },
  );
}
