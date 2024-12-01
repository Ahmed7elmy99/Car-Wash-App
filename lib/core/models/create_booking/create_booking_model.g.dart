// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingModel _$BookingModelFromJson(Map<String, dynamic> json) => BookingModel(
      json['implementationLocation'] as String,
      json['implementationTime'] as String,
      json['car'] as String,
      json['implementationDate'] as String,
      json['address'],
      json['carId'] as String?,
      json['service'],
      (json['latitude'] as num?)?.toDouble(),
      (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BookingModelToJson(BookingModel instance) =>
    <String, dynamic>{
      'implementationLocation': instance.implementationLocation,
      'implementationTime': instance.implementationTime,
      'carId': instance.carId,
      'service': instance.service,
      'car': instance.car,
      'implementationDate': instance.implementationDate,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
