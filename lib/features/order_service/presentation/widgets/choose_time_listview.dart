// Edited by: nadeen mohamed
// Edited at date: 24/10/2024
// Edit note: remove views folder and move widgets folder in presentation folder and
// Use the correct imports
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/booking_cubit/booking_cubit.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/choose_time_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ChooseTimeListview extends StatefulWidget {
  const ChooseTimeListview({super.key, required this.value});
  final Function(String index) value;
  @override
  State<ChooseTimeListview> createState() => _ChooseTimeListviewState();
}

class _ChooseTimeListviewState extends State<ChooseTimeListview> {
  int? selectedIndex;

  void onContainerTapped(int index) {
    setState(() {
      selectedIndex = index; // Update the selected index
    });
    // Created by: Nadeen Mohamed
    // Created at date: 3/11/2024
    // Notify the BookingCubit of the selected time
    widget.value(getTimeLabel(index));
 
  }

  // Function to calculate the time label for each container based on its index
  String getTimeLabel(int index) {
    // Edited by: Nadeen Mohamed
    // Edited at date: 3/11/2024
    // Edit note: Make time starting from 1:00
    DateTime startTime = DateTime(2024, 1, 1, 1, 0); // Starting from 1:00
    DateTime time = startTime.add(Duration(minutes: 30 * index));
    return DateFormat('HH:mm').format(time); // Format as "HH:mm"
  }

  @override
  Widget build(BuildContext context) {
    // Edited by: Nadeen Mohamed
    // Edited at date: 15/10/2024
    // Add ConstrainedBox with maxHeight to Listview and remove sizedbox
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 36.h, // Set a fixed height for the ListView
      ),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          // Edited by: Nadeen Mohamed
          // Edited at date: 3/11/2024
          // Edit note: change the number of itemCount
          itemCount: 24,
          itemBuilder: (context, index) {
            return ChooseTimeContainer(
              isSelected: selectedIndex == index,
              onTap: () => onContainerTapped(index),
              // Edited by: Nadeen Mohamed
              // Edited at date: 31/10/2024
              // Edit note:  Pass calculated time label
              timeLabel: getTimeLabel(index),
            );
          }),
    );
  }
}
