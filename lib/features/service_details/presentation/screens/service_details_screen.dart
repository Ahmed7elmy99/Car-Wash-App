import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/core/models/booking/detailed_booking_data.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/features/addresses/presentation/cubit/address_cubit.dart';

import 'package:car_wash_mobile_app/features/service_details/presentation/widets/car_details.dart';
import 'package:car_wash_mobile_app/features/service_details/presentation/widets/normal_wash_service_details.dart';

import 'package:car_wash_mobile_app/features/service_details/presentation/widets/payment_follow_up.dart';
import 'package:car_wash_mobile_app/features/service_details/presentation/widets/payment_invoice.dart';
import 'package:car_wash_mobile_app/features/service_details/presentation/widets/time_details.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../widets/address_details.dart';

// start: created by helmy (14/10/2024)
//edit date (15/10/2024)
class ServiceDetailsScreen extends StatelessWidget {
  static const String id =
      '/serviceDetailsScreen'; // Unique identifier for navigation
  // Edited by: Nadeen Mohamed
  // Edited at date: 3/11/2024
  // Edit note: Create variables for data coming from orderServiceScreen
  const ServiceDetailsScreen({
    super.key,
    required this.bookingData,
    this.addressModel,
  });
  final DetailedBookingData bookingData;
  final AddressModel? addressModel;

  @override
  Widget build(BuildContext context) {
    // Created by: Nadeen Mohamed
    // Created at date: 3/11/2024
    // Create a DateFormat instance and Format the selected date
    DateTime parsedDate = DateTime.parse(bookingData.implementationDate);
    String formattedDate = DateFormat('d MMM, E').format(parsedDate);
    return Scaffold(
      // Uncomment the line below to add a bottom navigation bar for payment follow-up
      // bottomNavigationBar: const PaymentFollowUp(),
      appBar: AppBar(
        scrolledUnderElevation: 0, // No shadow effect when scrolling
        elevation: 0, // No elevation for the app bar
        leading: SizedBox(
          width: 24.w,
          height: 24.h,
          child: const CustomBackButton(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 10.h, left: 20.w, right: 20.w), // Padding for content
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align content to the start
                children: [
                  // Service Title
                  Align(
                      alignment: Alignment.topRight,
                      // Edited by: Nadeen Mohamed
                      // Edited at date: 3/11/2024
                      // Edit: display service title from orderService screen
                      child: Text(bookingData.serviceName,
                          style: AppTextStyles.kBlack15FontW700)),
                  SizedBox(height: 50.h), // Space between elements
                  // Details of the normal wash service
                  // Edited by: Nadeen Mohamed
                  // Edited at date: 3/11/2024
                  // Edit: display service image,service title, price from orderService screen
                  NormalWashServiceDetails(
                    imageUrl: bookingData.serviceImage,
                    serviceTitle: bookingData.serviceName,
                    servicePrice: bookingData.servicePrice.toString(),
                  ),
                  SizedBox(height: 21.h),
                  // Time Details
                  Text('time'.tr, style: AppTextStyles.kBlack15FontW700),
                  SizedBox(height: 10.h),
                  // Edited by: Nadeen Mohamed
                  // Edited at date: 3/11/2024
                  // Edit: display time,period and formattedDate from orderService screen
                  TimeDetails(
                    time: bookingData.implementationTime,
                    selectedDate: formattedDate,
                    period: '',
                  ), // Displays time information
                  SizedBox(height: 22.h),
                  // Address Details
                  bookingData.address == null
                      ? Container()
                      : Text('address'.tr,
                          style: AppTextStyles.kBlack15FontW700),
                  SizedBox(height: 18.h),
                  // Edited by: Nadeen Mohamed
                  // Edited at date: 3/11/2024
                  // Edit: display selectedAddress from orderService screen
                  bookingData.address == null
                      ? Container()
                      : AddressDetails(selectedAddress: bookingData.address!),
                  // Displays address information
                  SizedBox(height: 26.h),
                  // Car Details
                  Text("car_details".tr, style: AppTextStyles.kBlack15FontW700),
                  SizedBox(height: 12.h),
                  CarDetails(
                    carImage: bookingData.carImage ?? '',
                    carName: bookingData.carName!,
                  ), // Displays car information
                  SizedBox(height: 25.h),
                  // Payment Details
                  Text('payment_details'.tr,
                      style: AppTextStyles.kBlack15FontW700),
                  //  SizedBox(height: 21.h),
                  // const PaymentDetails(), // Displays payment information
                  SizedBox(height: 22.h),
                  // Edited by: Nadeen Mohamed
                  // Edited at date: 21/11/2024
                  // Edite note: Display payment details
                  PaymentInvoice(
                    totalPrice: bookingData.servicePrice.toString(),
                    serviceValue: bookingData.servicePrice.toString(),
                  ), // Displays payment invoice
                ],
              ),
            ),
            SizedBox(
                height: 43.h), // Space before the payment follow-up section
            // PaymentFollowUp(
            //   servicePrice: bookingData.servicePrice.toString(),
            // ), // Displays payment follow-up options
            PaymentFollowUp(
              servicePrice:  bookingData.servicePrice.toString(),
              selectedAddressModel:
                  addressModel, // Ensure myAddressModel is not null
            ),
          ],
        ),
      ),
    );
  }
}
