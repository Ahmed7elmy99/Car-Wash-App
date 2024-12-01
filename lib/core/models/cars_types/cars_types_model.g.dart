// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cars_types_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarsTypesModel _$CarsTypesModelFromJson(Map<String, dynamic> json) =>
    CarsTypesModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$CarsTypesModelToJson(CarsTypesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
    };
