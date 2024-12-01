import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/booking_cubit/booking_cubit.dart';
// created by: nadeen mohamed
// created at date: 3/11/2024
// import the path of booking cubit
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// Edited by: Nadeen mohamed
// Edited at date: 15/10/2024
// This file contains the part of choosing type of reservation (internal,external)
class ReservationTypeContainer extends StatefulWidget {
  const ReservationTypeContainer({super.key, required this.value});

  /// value 0 for internal , 1 for outside
  final Function(int val) value;

  @override
  State<ReservationTypeContainer> createState() =>
      _ReservationTypeContainerState();
}

class _ReservationTypeContainerState extends State<ReservationTypeContainer> {
  int? selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // Edited by: nadeen mohamed
    // Edited at date: 15/10/2024
    // Add padding
    return Container(
      padding: EdgeInsetsDirectional.only(start: 13.w, end: 13.w),
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
        color: const Color(0xffF9F9F9),
        borderRadius: BorderRadius.circular(10.r),
      ),
      // Edited by: Nadeen Mohamed
      // Edited at date: 11/11/2024
      // Edite note: remove padding from the top of row
      child: Row(
        children: [
          Text(
            'type_of_reservation'.tr, // use translation by nadeen (13/10/2024)
            style: AppTextStyles.kBlack14FontW700,
          ),
          const Spacer(),
          GestureDetector(
              onTap: () => setSelected(0),
              child: TypeOfReservationContainer(
                typeText: 'internal_reservation'
                    .tr, // use translation by nadeen (13/10/2024)
                isSelected: selectedIndex == 0,
              )),
          GestureDetector(
              onTap: () => setSelected(1),
              child: TypeOfReservationContainer(
                typeText: 'external_reservation'
                    .tr, // use translation by nadeen (13/10/2024)
                isSelected: selectedIndex == 1,
              )),
        ],
      ),
    );
  }

  void setSelected(int val) {
    setState(() {
      selectedIndex = val;
    });
    // Created by: Nadeen Mohamed
    // Created at date: 3/11/2024
    // // Notify the BookingCubit of the reservation type 1
    widget.value(val);
  }
}

class TypeOfReservationContainer extends StatelessWidget {
  const TypeOfReservationContainer(
      {super.key, required this.typeText, required this.isSelected});
  final String typeText;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    // Edited by: Nadeen Mohamed
    // Edited at date: 11/11/2024
    // Edite note: Remove padding
    return Container(
      padding: EdgeInsetsDirectional.only(start: 5.w, end: 5.w),
      width: 72.19.w,
      height: 30.h,
      decoration: BoxDecoration(
          color: isSelected ? ColorName.mintGreen : const Color(0xffF9F9F9),
          // Edited by: nadeen mohamed
          // Edited at date: 17/10/2024
          // Edit note: Use screenUtil
          borderRadius: BorderRadius.circular(8.0.r)),
      child: Center(
        child: Text(
          typeText,
          style: isSelected
              ? AppTextStyles.kWhite14FontW700
              : AppTextStyles.kBlack14FontW700,
        ),
      ),
    );
  }
}
