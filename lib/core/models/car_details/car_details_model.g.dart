// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarDetailsModel _$CarDetailsModelFromJson(Map<String, dynamic> json) =>
    CarDetailsModel(
      id: (json['id'] as num).toInt(),
      carName: json['carName'] as String,
      user: json['user'] as String,
      imageCar: json['imageCar'] as String,
      carType: json['carType'] as String,
      colorCar: json['colorCar'] as String,
      isDefault: json['isDefault'] as String,
      carNumber: json['carNumber'] as String,
    );

Map<String, dynamic> _$CarDetailsModelToJson(CarDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'carName': instance.carName,
      'user': instance.user,
      'imageCar': instance.imageCar,
      'carType': instance.carType,
      'colorCar': instance.colorCar,
      'isDefault': instance.isDefault,
      'carNumber': instance.carNumber,
    };
