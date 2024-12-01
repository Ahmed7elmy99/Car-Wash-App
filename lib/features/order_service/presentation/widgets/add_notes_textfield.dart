import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// Edited by: Nadeen Mohamed
// Edited at date: 15/10/2024
// Edit note: use const keyword to border color
// This widget is used to make container which help user to add notes
class AddNotesTextfield extends StatelessWidget {
  const AddNotesTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 333.w,
      height: 128.h,
      decoration: BoxDecoration(
        // Edited by: Nadeen Mohamed
        // Edited at date: 20/10/2024
        // Edit note: using screenUtil in borderRadius
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: ColorName.black2.withOpacity(0.05),
          // Edited by : nadeen mohamed
          // Edited at date: 17/10/2024
          // Edit note: use screenUtil(.w) to the width
          width: 1.w, // Border width
        ),
      ),
      child: TextField(
        cursorColor: ColorName.mintGreen,
        maxLines: 4,
        // Edited by: Nadeen Mohamed
        // Edited at date: 3/11/2024
        // Edit note: use onChanged to update notes in BookingCubit
        onChanged: (value) {
       // Edited by: Nadeen Mohamed
       // Edited at date: 5/11/2024
       // Edit note: remove bookingCubit
        },
        decoration: InputDecoration(
          hintText:
              '${'add_notes'.tr}...', // use translation by nadeen (13/10/2024)
          hintStyle: AppTextStyles.kGery12WithOpacity50FontW400,
          border: InputBorder.none,
          contentPadding:
              // Edited by: nadeen mohamed
              // Edited at date: 17/10/2024
              // Edit note: use screenUtil(.h) in padding
              EdgeInsets.symmetric(vertical: 19.h, horizontal: 22.w),
        ),
      ),
    );
  }
}
