// Created by: Nadeen Mohamed
// Created at date: 5/11/2024
// Create CreateBookingState
part of 'create_booking_cubit.dart';

@freezed
class CreateBookingState<T> with _$CreateBookingState<T> {
  const factory CreateBookingState.initial() = _Initial;
  const factory CreateBookingState.loading() = CreateBookingLoading;
  // Edited by: Nadeen Mohamed
  // Edited at date: 7/11/2024
  // Edit note: update success state
  const factory CreateBookingState.success(T booking) = CreateBookingSuccess<T>;
  const factory CreateBookingState.failure({required ApiErrorHandler error}) = CreateBookingFailure;
}
