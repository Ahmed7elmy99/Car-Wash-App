// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceDetailsModel _$ServiceDetailsModelFromJson(Map<String, dynamic> json) =>
    ServiceDetailsModel(
      id: (json['id'] as num).toInt(),
      userId: json['userId'] as String,
      implementationLocation: json['implementationLocation'] as String,
      implementationTime: json['implementationTime'] as String,
      car: json['car'] as String,
      status: json['status'] as String,
      implementationDate: json['implementationDate'] as String,
      address: json['address'] as String,
      servicePrice: json['servicePrice'] as String,
      serviceImage: json['serviceImage'] as String,
      serviceName: json['serviceName'] as String,
    );

Map<String, dynamic> _$ServiceDetailsModelToJson(
        ServiceDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'implementationLocation': instance.implementationLocation,
      'implementationTime': instance.implementationTime,
      'car': instance.car,
      'status': instance.status,
      'implementationDate': instance.implementationDate,
      'address': instance.address,
      'servicePrice': instance.servicePrice,
      'serviceImage': instance.serviceImage,
      'serviceName': instance.serviceName,
    };
