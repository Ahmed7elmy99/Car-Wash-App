// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_booking_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailedBookingData _$DetailedBookingDataFromJson(Map<String, dynamic> json) =>
    DetailedBookingData(
      id: (json['id'] as num).toInt(),
      userId: DetailedBookingData._parseInt(json['userId']),
      implementationLocation: json['implementationLocation'] as String,
      implementationTime: json['implementationTime'] as String,
      car: json['car'] as String? ?? '',
      status: json['status'] as String?,
      implementationDate: json['implementationDate'] as String,
      address: json['address'] as String?,
      servicePrice: json['servicePrice'],
      serviceImage: json['serviceImage'] as String,
      serviceName: json['serviceName'] as String,
      serviceId: (json['serviceId'] as num?)?.toInt(),
      longitude: DetailedBookingData._parseDouble(json['longitude']),
      latitude: DetailedBookingData._parseDouble(json['latitude']),
      carColor: json['carColor'] as String?,
      carName: json['carName'] as String?,
      carNumber: json['carNumber'] as String?,
      carImage: json['carImage'] as String?,
    );

Map<String, dynamic> _$DetailedBookingDataToJson(
        DetailedBookingData instance) =>
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
      'serviceId': instance.serviceId,
      'serviceImage': instance.serviceImage,
      'serviceName': instance.serviceName,
      'carName': instance.carName,
      'carColor': instance.carColor,
      'carNumber': instance.carNumber,
      'carImage': instance.carImage,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
