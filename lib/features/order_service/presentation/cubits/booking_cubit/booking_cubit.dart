// Edited by: Nadeen Mohamed
// Edited at date: 7/11/2024
// Edit note: UnComment the code
// Created by: Nadeen Mohamed
// Created at date: 3/11/2024
/* Create BookingCubit for order service screen
Contains:
updatePeriod() method
updateTime() method
selectDate() method
updateSelectedAddress() method
setReservationType() method
updateNotes() method
updateServiceDetails() method
*/
import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/core/models/all_services_model/all_services_model.dart';
import 'package:car_wash_mobile_app/features/order_service/data/model/Branch_model/branch_model.dart';
import 'package:car_wash_mobile_app/features/order_service/data/model/car_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'booking_state.dart';
part 'booking_cubit.freezed.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit()
      : super(BookingState(
            // Edited by: Nadeen Mohamed
            // Edited at date: 9/11/2024
            // Edite note: remove the default values of parameters
            period: 'PM',
            notes: '',
            service: AllServicesModel(
                id: 1,
                name: 'name',
                description: 'description',
                price: 'price',
                time: 2,
                slug: 'slug',
                image: 'image',
                additionalProducts: List.empty())));

  // Method to update period
  void updatePeriod(String period) {
    emit(state.copyWith(period: period));
  }

  // Method to update time
  void updateTime(String time) {
    emit(state.copyWith(time: time));
  }

  // Method to update the selected date
  void selectDate(DateTime date) {
    emit(state.copyWith(selectedDate: date));
  }

  // Method to update selected address
  void updateSelectedAddress(AddressModel address) {
    emit(state.copyWith(selectedAddress: address));
  }

  // Method to update selected branch
  void updateSelectedBranch(BranchModel branch) {
    emit(state.copyWith(selectedBranch: branch));
  }

  // Method to set reservation type
  void setReservationType(int type) {
    emit(state.copyWith(reservationType: type));
  }

  // Method to update notes
  void updateNotes(String notes) {
    emit(state.copyWith(notes: notes));
  }

  // Method to update selected car
  void updateSelectedCar(CarModel car) {
    emit(state.copyWith(selectedCar: car));
  }

  // Method to update service details
  void updateServiceDetails({
    required AllServicesModel service,
  }) {
    emit(state.copyWith(service: service));
  }

  // Edited by: Nadeen Mohamed
  // Edited at date: 9/11/2024
  // Edite note: create method to validate booking fields
  String? validateBookingFields() {
    if (state.period.isEmpty) {
      return "select_period".tr;
    }
    if (state.time == null || state.time!.isEmpty) {
      return "select_time".tr;
    }
    if (state.selectedDate == null) {
      return "select_date".tr;
    }
    // if (state.selectedAddress == null) {
    //   return "select_address".tr;
    // }
    if (state.selectedCar == null) {
      return "select_car".tr;
    }
    return null; // No errors, all fields are valid
  }

  // Edited by: Nadeen Mohamed
  // Edited at date: 9/11/2024
  // Edite note: Method to check if booking is valid
  bool isBookingValid() => validateBookingFields() == null;
}
