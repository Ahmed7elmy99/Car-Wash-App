// Edited by: Nadeen Mohamed
// Edited at date: 7/11/2024
// Edit note: UnComment the file
// Created by: Nadeen Mohamed
// Created at date: 3/11/2024
// Create BookingState for orderServiceScreen
part of 'booking_cubit.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState({
    required String period, // "AM" or "PM"
    String? time, // Time label, e.g., "10:30"
    DateTime? selectedDate, // Selected date
    AddressModel? selectedAddress, // selected address
    int? reservationType, // Add reservationType to track the type
    String? notes, // notes
    required AllServicesModel service,
    CarModel? selectedCar, // New field to store the selected car
    BranchModel? selectedBranch,
  }) = _BookingState;
}