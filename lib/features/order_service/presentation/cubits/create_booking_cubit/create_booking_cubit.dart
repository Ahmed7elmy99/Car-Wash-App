// created by: Nadeen Mohamed
// created at date: 5/11/2024
// Create CreateBookingCubit
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/order_service/logic/repo/create_booking_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_booking_state.dart';
part 'create_booking_cubit.freezed.dart';

// Edited by: Nadeen Mohamed
// Edited at date: 21/11/2024
// Edite note: remove unused code

class CreateBookingCubit extends Cubit<CreateBookingState> {
  CreateBookingCubit() : super(const CreateBookingState.initial());

  // Edited by: Nadeen Mohamed
  // Edited at date: 21/11/2024
  // Edite note: remove commented code
  void createBooking({
  required String implementationLocation,
  required String implementationDate,
  required String implementationTime,
  required String serviceId,
  required String carId,
  String? branchId, // Optional
  String? addressId, // Optional
}) async {
  emit(const CreateBookingLoading());

  String? locationId;
  if (implementationLocation == 'inside') {
    locationId = branchId;
  } else if (implementationLocation == 'outside') {
    locationId = addressId;
  }

  if (locationId == null) {
    emit(CreateBookingFailure(
      error: ApiErrorHandler(
        statusMessage: "Location ID is required.",
        statusCode: 400,
        success: false,
      ),
    ));
    return;
  }

  CreateBookingRepo.createBooking(
    implementationLocation: implementationLocation,
    implementationDate: implementationDate,
    implementationTime: implementationTime,
    serviceId: serviceId,
    carId: carId,
    addressId: addressId, // Dynamic based on location
    branchId: branchId,
  ).then(((response) {
    response.when(success: (booking) {
      emit(CreateBookingSuccess(booking));
    }, failure: (error) {
      emit(CreateBookingFailure(error: error));
    });
  }));
}

}
