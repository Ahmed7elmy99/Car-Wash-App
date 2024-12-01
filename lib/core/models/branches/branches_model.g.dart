// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branches_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BranchesModel _$BranchesModelFromJson(Map<String, dynamic> json) =>
    BranchesModel(
      id: (json['id'] as num).toInt(),
      address: json['address'] as String,
      name: json['name'] as String,
      longitude: json['longitude'] as String,
      latitude: json['latitude'] as String,
    );

Map<String, dynamic> _$BranchesModelToJson(BranchesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'name': instance.name,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
