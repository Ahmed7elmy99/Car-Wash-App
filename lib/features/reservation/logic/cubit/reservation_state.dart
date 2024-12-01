part of 'reservation_cubit.dart';

///Created by amr elnbawy 23/10/2024

@freezed
class ReservationState with _$ReservationState {
  const factory ReservationState.initial() = InitialReservation;
  const factory ReservationState.load() = LoadReservation;
  const factory ReservationState.success(List<DetailedBookingData> data) =
      SuccessReservation;
  const factory ReservationState.failure(ApiErrorHandler error) =
      failureReservation;
}
