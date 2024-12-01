import 'package:bloc/bloc.dart';
import 'package:car_wash_mobile_app/core/models/booking/detailed_booking_data.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/reservation/data/repo/reservation_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'reservation_state.dart';
part 'reservation_cubit.freezed.dart';

///Created by amr elnbawy 23/10/2024

class ReservationCubit extends Cubit<ReservationState> {
  ReservationCubit(this.repo) : super(const ReservationState.initial());

  final ReservationRepo repo;

  static const ReservationState loading = ReservationState.load();

  late SuccessReservation succesState;
  late failureReservation errorState;

  Future<void> getbookings() async {
    emit(loading);
    final data = await repo.getReservations();
    data.when(
      success: (data) => emit(succesState = SuccessReservation(data)),
      failure: (data) => emit(errorState = failureReservation(data)),
    );
  }

  Future<void> confirmBooking(int id) async {
    final data = await repo.confirmReservation(id);
    data.when(success: (data) {
      Get.snackbar("success", data["message"]);
    }, failure: (data) {
      Get.snackbar("success", data.statusMessage);
    });
    getbookings();
  }

  Future<void> cancelBooking(int id) async {
    final data = await repo.cancelReservation(id);
    data.when(success: (data) {
      Get.snackbar("success", data["message"]);
    }, failure: (data) {
      Get.snackbar("success", data.statusMessage);
    });
    getbookings();
  }
}
