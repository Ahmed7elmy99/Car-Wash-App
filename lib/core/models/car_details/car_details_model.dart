import 'package:car_wash_mobile_app/features/order_service/data/model/car_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'car_details_model.g.dart';

// start: created by helmy
//creat At Date (6/11/2024)

@JsonSerializable()
class CarDetailsModel {
  final int id;
  final String carName;
  final String user;
  final String imageCar;
  final String carType;
  final String colorCar;
  final String isDefault;
  final String carNumber;

  CarDetailsModel(
      {required this.id,
      required this.carName,
      required this.user,
      required this.imageCar,
      required this.carType,
      required this.colorCar,
      required this.isDefault,
      required this.carNumber});
  factory CarDetailsModel.fromJson(Map<String, dynamic> json) {
    print('ProductModel JSON: $json'); // Debug log
    return _$CarDetailsModelFromJson(json);
  }

  // Map<String, dynamic> toJson() => _$CarDetailsModelToJson(this);
  //   /// Factory to create a `CarDetailsModel` from a `CarModel`
  // factory CarDetailsModel.fromCarModel(CarModel carModel) {
  //   return CarDetailsModel(
  //     id: carModel.carId,
  //     carName: carModel.carName,
  //     user: '', // Default or placeholder as `CarModel` does not have `user`
  //     imageCar: carModel.imageCar,
  //     carType: carModel.carType,
  //     colorCar: carModel.colorCar,
  //     isDefault: carModel.isDefault.toString(), // Convert int to String
  //     carNumber: carModel.carNumber,
  //   );
  // }

}
