// Created by: Nadeen Mohamed
// Created at date: 7/11/2024
// create get usr cars cubit
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/core/shared_pref/shared_pref.dart';
import 'package:car_wash_mobile_app/features/order_service/data/model/car_model.dart';
import 'package:car_wash_mobile_app/features/order_service/logic/repo/get_user_cars_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_cars_state.dart';
part 'get_user_cars_cubit.freezed.dart';

class GetUserCarsCubit extends Cubit<GetUserCarsState> {
  GetUserCarsCubit() : super(const GetUserCarsState.initial());

  // Edited by: Nadeen Mohamed
  // Edited at date: 21/11/2024
  // Edite note: create instance of shared preference
  final SharedPref _sharedPref = SharedPref.instance;
  // Edited by: Nadeen Mohamed
  // Edited at date: 21/11/2024
  // Edite note: Fetch all cars with caching
  Future<void> getAllCars() async {
    emit(const CarsLoading());

    // Edited by: Nadeen Mohamed
    // Edited at date: 21/11/2024
    // Edite note: Try loading cached cars

    // Edited by: Nadeen Mohamed
    // Edited at date: 26/11/2024
    // Edite note: UnCooment loading cached cars
    final cachedCars = await _sharedPref.getUserCarsFromCache();
    if (cachedCars.isNotEmpty) {
      emit(CarsSuccess<List<CarModel>>(cachedCars));
    }

    // Edited by: Nadeen Mohamed
    // Edited at date: 21/11/2024
    // Edite note: Fetch cars from API and update cache
    final response = await GetUserCarsRepo.getAllCars();
    response.when(
      success: (allCars) async {
        emit(CarsSuccess<List<CarModel>>(allCars));
        // Edited by: Nadeen Mohamed
        // Edited at date: 21/11/2024
        // Edite note:  Save cars in cache
        await _sharedPref.saveUserCars(allCars);
      },
      failure: (error) {
        emit(CarsFailure(error: error));
      },
    );
  }
}
