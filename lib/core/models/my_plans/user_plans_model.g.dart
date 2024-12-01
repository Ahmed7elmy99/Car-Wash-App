// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_plans_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPlansModel _$UserPlansModelFromJson(Map<String, dynamic> json) =>
    UserPlansModel(
      id: (json['id'] as num).toInt(),
      description: json['description'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      packageTime: (json['packageTime'] as num).toInt(),
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      status: json['status'] as String,
      isActive: (json['is_active'] as num).toInt(),
      packageName: json['packageName'] as String,
    );

Map<String, dynamic> _$UserPlansModelToJson(UserPlansModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'packageTime': instance.packageTime,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'status': instance.status,
      'is_active': instance.isActive,
      'packageName': instance.packageName,
    };
