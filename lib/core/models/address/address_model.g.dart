// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) => AddressModel(
      id: (json['id'] as num).toInt(),
      nameAddress: json['nameAddress'] as String,
      region: json['region'] as String,
      city: json['city'] as String,
      neighborhood: json['neighborhood'] as String,
      street: json['street'] as String,
      isDefault: json['default'] as String,
    );

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameAddress': instance.nameAddress,
      'region': instance.region,
      'city': instance.city,
      'neighborhood': instance.neighborhood,
      'street': instance.street,
      'default': instance.isDefault,
    };
