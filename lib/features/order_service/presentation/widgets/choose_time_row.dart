import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// seperate choose time row widget by nadeen (13/10/2024)
// Edited by nadeen
// Edited at : 15/10/2024
// This widget contains row of text and icon

// Edited by: Nadeen Mohamed
// Edited at date: 3/11/2024
// Edit note: change widget to stateful
class ChooseTimeRow extends StatefulWidget {
  const ChooseTimeRow({super.key, required this.onfinish});
  final Function(String choise) onfinish;
  @override
  State<ChooseTimeRow> createState() => _ChooseTimeRowState();
}

class _ChooseTimeRowState extends State<ChooseTimeRow> {
  // Edited by: Nadeen Mohamed
  // Edited at date: 3/11/2024
  // Edite notes:
  // 1- Create variable for selectedPeriod and GlobalKey
  // 2- create showPopupMenu
  String selectedPeriod = 'PM'; // Initial value for AM/PM
  final GlobalKey menuKey = GlobalKey();

  void showPopupMenu() {
    final dynamic popupMenu = menuKey.currentState;
    popupMenu?.showButtonMenu();
  }

  @override
  Widget build(BuildContext context) {
    // final timeSelectionCubit = context.read<BookingCubit>();
    // Edited by: Nadeen Mohamed
    // Edited at date: 15/10/2024
    // Remove padding
    return GestureDetector(
      onTap: showPopupMenu,
      child: Row(
        children: [
          Text(
            'choose_time'.tr,
            style: AppTextStyles.kBlack12FontW700,
          ),
          SizedBox(
            width: 16.w,
          ),
          // Edited by: nadeen mohamed
          // Edited at date: 17/10/2024
          // Edit note: Add size to the icon

          // Edited by: Nadeen Mohamed
          // Edited at date: 3/11/2024
          // Edit note: GestureDetector to trigger PopupMenuButton when icon is tapped
          Icon(
            Icons.keyboard_arrow_down,
            // Edited by: Nadeen Mohamed
            // Edited at date: 20/10/2024
            // Edit note: Use ScreenUtil in the size of icon
            size: 30.r,
          ),
          SizedBox(
            width: 7.w,
          ),
          Text(
            selectedPeriod,
            style: TextStyle(
              // Edited by: nadeen mohamed
              // Edited at date: 17/10/2024
              // Edit note: add sp to fontSize to be responsive
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),

          // Edited by: Nadeen Mohamed
          // Edited at date: 3/11/2024
          // Edit note: Hidden PopupMenuButton to manage the dropdown options
          PopupMenuButton<String>(
            color: ColorName.white,
            key: menuKey, // Assign the key to access it
            onSelected: (value) {
              // Update the state with the selected period
              setState(() {
                selectedPeriod = value;
              });
              widget.onfinish(selectedPeriod);
            },
            itemBuilder: (BuildContext context) {
              return ['AM', 'PM'].map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
            child: Container(),
          ),
        ],
      ),
    );
  }
}
