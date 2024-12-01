import 'package:car_wash_mobile_app/core/models/booking/detailed_booking_data.dart';
import 'package:car_wash_mobile_app/features/reservation/logic/cubit/reservation_cubit.dart';
import 'package:car_wash_mobile_app/features/reservation/presentation/widgets/reservation_item.dart';
import 'package:car_wash_mobile_app/features/reservation/presentation/widgets/reservation_item_shimmer.dart';
import 'package:car_wash_mobile_app/features/reservation/presentation/widgets/reservation_statusbar.dart';
import 'package:car_wash_mobile_app/features/reservation/presentation/widgets/reservation_statusbar_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Screen that displays a list of reservations with filters for different reservation statuses.
///
/// Created by: Amr Elnbawy
/// Created at Date: 12-oct-2024
/// Edit by: Amr Elnbawy
/// Edit at Date: 14-oct-2024
///
/// This Widget  displays a list of [ReservationItem]. Users can filter
/// the reservations based on their status using the ReservationStatusbar at the top of
/// the screen (e.g., active, canceled, modified). The list is updated dynamically as
/// the filter changes. Each reservation item shows an image and status (active or inactive).
///
/// It uses a ValueNotifier<int> to track the currently selected filter and applies
/// filtering logic to the reservation data based on the selected value.
/* _______________________________________________________________________________________________
edited by : Mohamed Waleed
edited at : 21/10/2024
edits :
add optional parameter for scroll physics becuase it will not be scrollable in profile tabs

*/
class ReservationList extends StatefulWidget {
  final ScrollPhysics? physics;
  final bool enableSwipe;
  const ReservationList({
    super.key,
    this.physics = const AlwaysScrollableScrollPhysics(),
    this.enableSwipe = true,
  });

  @override
  State<ReservationList> createState() => _ReservationListState();
}

class _ReservationListState extends State<ReservationList> {
  late ValueNotifier<int> activeButton;
  List<DetailedBookingData> data = [];

  @override
  void initState() {
    super.initState();
    BlocProvider.of<ReservationCubit>(context).getbookings();
    activeButton = ValueNotifier<int>(3);
  }

  @override
  void dispose() {
    activeButton.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservationCubit, ReservationState>(
      builder: (context, state) {
        if (state is LoadReservation) {
          return ListView.builder(
            physics: widget.physics,
            itemCount: 10,
            itemBuilder: (context, i) => i == 0
                ? const ReservationStatusbarShimmer()
                : const ReservationItemShimmer(),
          );
        } else if (state is failureReservation) {
          state.error.showError(context);
          return Center(child: Text(state.error.statusMessage));
        } else if (state is SuccessReservation) {
          data = state.data;
        }

        return RefreshIndicator(
          strokeWidth: 0,
          color: Colors.white,
          backgroundColor: Colors.white,
          onRefresh: () =>
              BlocProvider.of<ReservationCubit>(context).getbookings(),
          child: GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                onPageSwipe(true); // Swipe right
              } else if (details.primaryVelocity! > 0) {
                onPageSwipe(false); // Swipe left
              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReservationStatusbar(activebutton: activeButton),
                Expanded(
                  child: ValueListenableBuilder<int>(
                    valueListenable: activeButton,
                    builder: (context, value, child) {
                      final newdata = data.where((e) {
                        if (value == 1 && e.status == "confirmed_by_admin") {
                          return true;
                        } else if (value == 2 && e.status == "cancel") {
                          return true;
                        } else if (value == 0) {
                          return true;
                        } else if (value == 3 &&
                            (e.status == "pending" ||
                                e.status == "confirmed_by_user")) {
                          return true;
                        }
                        return false;
                      }).toList();

                      return ListView.builder(
                        physics: widget.physics,
                        itemCount: newdata.length,
                        itemBuilder: (context, index) =>
                            ReservationItem(model: newdata[index]),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void onPageSwipe(bool right) {
    if (!widget.enableSwipe) return;
    switch (activeButton.value) {
      case 3:
        if (!right) activeButton.value = 1;
        break;
      case 1:
        if (right) activeButton.value = 3;
        if (!right) activeButton.value = 2;
      case 2:
        if (right) activeButton.value = 1;
        break;
      default:
    }
  }
}
