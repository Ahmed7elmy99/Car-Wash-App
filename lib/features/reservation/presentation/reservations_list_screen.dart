import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/features/reservation/api_services/reservation_api_services.dart';
import 'package:car_wash_mobile_app/features/reservation/data/repo/reservation_repo.dart';
import 'package:car_wash_mobile_app/features/reservation/logic/cubit/reservation_cubit.dart';
import 'package:car_wash_mobile_app/features/reservation/presentation/widgets/reservation_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

/// Screen that displays a list of reservations with filters for different reservation statuses.
///
/// Created by: Amr Elnbawy
/// Created at Date: 12-oct-2024
/// Edit by: Amr Elnbawy
/// Edit at Date: 22-oct-2024
///
/// The [ReservationsListScreen] displays a list of reservation items. Users can filter
/// the reservations based on their status using the ReservationStatusbar at the top of
/// the screen (e.g., active, canceled, modified). The list is updated dynamically as
/// the filter changes. Each reservation item shows an image and status (active or inactive).
///
/// It uses a ValueNotifier<int> to track the currently selected filter and applies
/// filtering logic to the reservation data based on the selected value.
class ReservationsListScreen extends StatelessWidget {
  // Static ID for navigation
  static String id = "/ReservationsListPath";
  const ReservationsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with a custom back button
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        // toolbarHeight: AppScreenUtils.isTablet ? 100 : null,
        // Edited by: Nadeen Mohamed
        // Edited at date: 21/11/2024
        // Edite note: remove CustomBackButton and add title
         // Title for the screen based on locale (e.g., Arabic or English)
        title: 
          Padding(
            padding: EdgeInsetsDirectional.only(top: 10.sp, start: 15.sp),
            child: Text("Reservation".tr,
                textAlign: TextAlign.end,
                style: AppTextStyles
                    .kBlack15FontW700), // Translated "Reservation" text
          ),
      ),
      body: Column(
        //Edit At Date (19/10/2024)
        //Edit By : Abdullah Ghaith
        //Edit Note :added a crossaxisalignment to align the title to the the right
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          SizedBox(height: 43.sp), // Space between title and status bar

          Expanded(
              child: BlocProvider(
                  create: (context) => ReservationCubit(
                      ReservationRepo(ReservationApiServices())),
                  child: BlocBuilder<ReservationCubit, ReservationState>(
                    builder: (context, state) {
                      return const ReservationList();
                    },
                  ))),
        ],
      ),
    );
  }
}
