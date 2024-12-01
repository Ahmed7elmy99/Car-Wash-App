// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationDetailsModel _$ReservationDetailsModelFromJson(
        Map<String, dynamic> json) =>
    ReservationDetailsModel(
      serviceId: (json['service_id'] as num).toInt(),
      addressId: (json['address_id'] as num).toInt(),
      myCarId: (json['my_car_id'] as num).toInt(),
      implementationDate: json['implementation_date'] as String,
      implementationTime: json['implementation_time'] as String,
      implementationLocation: json['implementation_location'] as String,
    );

Map<String, dynamic> _$ReservationDetailsModelToJson(
        ReservationDetailsModel instance) =>
    <String, dynamic>{
      'service_id': instance.serviceId,
      'address_id': instance.addressId,
      'my_car_id': instance.myCarId,
      'implementation_date': instance.implementationDate,
      'implementation_time': instance.implementationTime,
      'implementation_location': instance.implementationLocation,
    };
