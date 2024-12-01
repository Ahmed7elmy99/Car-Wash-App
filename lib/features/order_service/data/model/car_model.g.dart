// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarModel _$CarModelFromJson(Map<String, dynamic> json) => CarModel(
      carId: (json['id'] as num).toInt(),
      carName: json['carName'] as String,
      imageCar: json['imageCar'] as String,
      carType: json['carType'] as String,
      colorCar: json['colorCar'] as String,
      isDefault: (json['isDefault'] as num).toInt(),
      carNumber: json['carNumber'] as String,
    );

Map<String, dynamic> _$CarModelToJson(CarModel instance) => <String, dynamic>{
      'id': instance.carId,
      'carName': instance.carName,
      'imageCar': instance.imageCar,
      'carType': instance.carType,
      'colorCar': instance.colorCar,
      'isDefault': instance.isDefault,
      'carNumber': instance.carNumber,
    };
