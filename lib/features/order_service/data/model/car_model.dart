// Created by: Nadeen Mohamed
// Created at date: 7/11/2024
// Create Car Model

import 'package:car_wash_mobile_app/core/models/car_details/car_details_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'car_model.g.dart';

@JsonSerializable()
class CarModel {
  @JsonKey(name: 'id')
  final int carId;
  // Edited by: Nadeen Mohamed
  // Edited at date: 10/11/2024
  // Edite note: Add carName parameter
  final String carName;
  final String imageCar;
  final String carType;
  final String colorCar;
  final int isDefault;
  final String carNumber;

  CarModel(
      // Edited by: Nadeen Mohamed
      // Edited at date: 10/11/2024
      // Edit note: add carName to the constructor and format the file
      {required this.carId,
      required this.carName,
      required this.imageCar,
      required this.carType,
      required this.colorCar,
      required this.isDefault,
      required this.carNumber});
  factory CarModel.fromJson(Map<String, dynamic> json) {
    print('carModel JSON: $json'); // Debug log
    return _$CarModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$CarModelToJson(this);

  // /// Factory to create a `CarModel` from a `CarDetailsModel`
  // factory CarModel.fromCarDetailsModel(CarDetailsModel carDetailsModel) {

  //   return CarModel(
  //     carId: carDetailsModel.id,
  //     carName: carDetailsModel.carName,
  //     imageCar: carDetailsModel.imageCar,
  //     carType: carDetailsModel.carType,
  //     colorCar: carDetailsModel.colorCar,
  //     isDefault:
  //         int.tryParse(carDetailsModel.isDefault) ?? 0, // Convert String to int
  //     carNumber: carDetailsModel.carNumber,
  //   );
  // }

}
