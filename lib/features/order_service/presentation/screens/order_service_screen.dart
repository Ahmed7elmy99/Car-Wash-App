// Edited by: nadeen mohamed
// Edited at date: 24/10/2024
// Edit note: remove views folder and move widgets folder in presentation folder and
// Use the correct imports
import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/core/models/all_services_model/all_services_model.dart';
import 'package:car_wash_mobile_app/core/models/offers/offers_model.dart';
import 'package:car_wash_mobile_app/features/addresses/presentation/cubit/address_cubit.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/booking_cubit/booking_cubit.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/create_booking_cubit/create_booking_cubit.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/confirm_reservation_container.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/order_service_body.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

/// Edited by nadeen
/// Edited at 15/10/2024
/// Change appbar color
class OrderServiceScreen extends StatelessWidget {
  static const String id = '/orderServiceScreen';
  const OrderServiceScreen(
      {super.key, this.offersModel, this.address, this.service});
  //Edited by:  Nadeen Mohamed
  // Edited at date: 5/11/2024
  // Edit note: Create AllServicesModel object
  final AllServicesModel? service;
  final AddressModel? address;
  final OffersModel? offersModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Created By : -------
      // Edited By : Abdullah Ghaith
      // Edit Date : 14/10/2024
      // Edit Description : Added InkWell to Navigate to Confirmation Screen
      // Edited by: Nadeen Mohamed
      // Edited at date: 21/11/2024
      // Edite note: remove commented bottom navigation bar
      bottomNavigationBar: InkWell(
        child: ConfirmReservationContainer(
          // Edited by: Nadeen Mohamed
          // Edited at date: 21/11/2024
          // Edite note: add null check operator to service
          priceAfterDiscount: service?.discountValue == null
              ? service?.price
              : service?.discountedPrice,
          priceBeforeDiscount:
              service?.discountValue == null ? '' : service!.price,
        ),
        onTap: () {
          final bookingCubit = context.read<BookingCubit>();
          final bookingState = bookingCubit.state;
          // Edited by: Nadeen Mohamed
          // Edited at date: 21/11/2024
          // Edite note: add null check operator to service
          bookingState.service.id = service!.id;
          // Get validation error message, if any
          final errorMessage = bookingCubit.validateBookingFields();
          if (errorMessage != null) {
            showTopSnackBar(
              Overlay.of(context),
              CustomSnackBar.error(
                backgroundColor: Colors.grey.shade200.withOpacity(0.5),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade200.withOpacity(0.5))
                ],
                icon: const SizedBox(),
                textStyle: AppTextStyles.kBlack15FontW600.copyWith(
                  color: ColorName.redColor,
                ),
                message: errorMessage,
              ),
            );
            return; // Stop execution if there's an error
          }

          // Determine implementationLocation
          String implementationLocation =
              bookingState.reservationType == 1 ? 'outside' : 'inside';

          // Determine branchId and addressId based on implementationLocation
          final String? branchId = (implementationLocation == 'inside')
              // Edited by: Nadeen Mohamed
              // Edited at date: 21/11/2024
              //Edite note: add null check operator for selectedBranch
              ? bookingState.selectedBranch?.id.toString()
              : null;
          final String? addressId = (implementationLocation == 'outside')
              // Edited by: Nadeen Mohamed
              // Edited at date: 21/11/2024
              //Edite note: add null check operator for selectedAddress
              ? bookingState.selectedAddress?.id.toString()
              : null;

          // Check required IDs based on the location type
          if (implementationLocation == 'inside' && branchId == null) {
            showTopSnackBar(
              Overlay.of(context),
              // Edited by: Nadeen Mohamed
              // Edited at date: 21/11/2024
              //Edite note: make localization
              CustomSnackBar.error(
                message: "branch_selection".tr,
              ),
            );
            return; // Stop if branchId is missing
          } else if (implementationLocation == 'outside' && addressId == null) {
            showTopSnackBar(
              Overlay.of(context),
              // Edited by: Nadeen Mohamed
              // Edited at date: 21/11/2024
              // Edite note: make localization
             CustomSnackBar.error(
                message: "address_selection".tr,
              ),
            );
            return; // Stop if addressId is missing
          }

          // Proceed with booking after validation
          String formattedDate =
              DateFormat('yyyy-MM-dd').format(bookingState.selectedDate!);

          BlocProvider.of<CreateBookingCubit>(context).createBooking(
            implementationLocation: implementationLocation,
            implementationDate: formattedDate,
            implementationTime: bookingState.time!,
            serviceId: bookingState.service.id.toString(),
            carId: bookingState.selectedCar!.carId.toString(),
            branchId: branchId, // Pass branchId for inside reservations
            addressId: addressId, // Pass addressId for outside reservations
          );
        },
      ),

      body: SafeArea(
          child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AddressCubit(),
          ),
        ],
        child: OrderServiceScreenBody(
          // Edited by: Nadeen Mohamed
          // Edited at date: 5/11/2024
          // Edit note: use service
          service: service!,
          address: address ??
              AddressModel(
                  id: 0,
                  nameAddress: 'nameAddress',
                  region: 'region',
                  city: 'city',
                  neighborhood: 'neighborhood',
                  street: 'street',
                  isDefault: 'isDefault'),
        ),
      )),
    );
  }
}
