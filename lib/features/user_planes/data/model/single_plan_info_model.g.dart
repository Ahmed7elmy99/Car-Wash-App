// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_plan_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SinglePlanInfoModel _$SinglePlanInfoModelFromJson(Map<String, dynamic> json) =>
    SinglePlanInfoModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: json['price'] as String,
      packageName: json['packageName'] as String,
      packageTime: json['packageTime'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      endDate: json['endDate'] as String,
      serviceItems: (json['serviceItems'] as List<dynamic>)
          .map((e) => AllPlanServiceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SinglePlanInfoModelToJson(
        SinglePlanInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'packageName': instance.packageName,
      'packageTime': instance.packageTime,
      'description': instance.description,
      'status': instance.status,
      'endDate': instance.endDate,
      'serviceItems': instance.serviceItems,
    };
