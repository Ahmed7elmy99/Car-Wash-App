// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BranchModel _$BranchModelFromJson(Map<String, dynamic> json) => BranchModel(
      id: (json['id'] as num).toInt(),
      address: json['address'] as String,
      name: json['name'] as String,
      longitude: json['longitude'] as String,
      latitude: json['latitude'] as String,
    );

Map<String, dynamic> _$BranchModelToJson(BranchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'name': instance.name,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
