// Created by: Nadeen Mohamed
// Created at date: 7/11/2024
// create get usr cars state
part of 'get_user_cars_cubit.dart';

@freezed
class GetUserCarsState<T> with _$GetUserCarsState {
  const factory GetUserCarsState.initial() = _Initial;
  const factory GetUserCarsState.loading() = CarsLoading;
  const factory GetUserCarsState.success(T allCars) = CarsSuccess<T>;
  const factory GetUserCarsState.failure( {required ApiErrorHandler error}) = CarsFailure;
}
