// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_plans_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllPlansModel _$AllPlansModelFromJson(Map<String, dynamic> json) =>
    AllPlansModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: json['price'],
      packageName: json['packageName'] as String,
      packageTime: json['packageTime'] as String,
      description: json['description'] as String,
      serviceItems: (json['serviceItems'] as List<dynamic>)
          .map((e) => AllPlanServiceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllPlansModelToJson(AllPlansModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'packageName': instance.packageName,
      'packageTime': instance.packageTime,
      'description': instance.description,
      'serviceItems': instance.serviceItems,
    };

AllPlanServiceItem _$AllPlanServiceItemFromJson(Map<String, dynamic> json) =>
    AllPlanServiceItem(
      id: (json['id'] as num).toInt(),
      serviceName: json['serviceName'] as String,
      serviceTime: (json['serviceTime'] as num).toInt(),
      numberTimesUsed: (json['numberTimesUsed'] as num).toInt(),
      serviceImage: json['serviceImage'] as String,
    );

Map<String, dynamic> _$AllPlanServiceItemToJson(AllPlanServiceItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serviceName': instance.serviceName,
      'serviceTime': instance.serviceTime,
      'numberTimesUsed': instance.numberTimesUsed,
      'serviceImage': instance.serviceImage,
    };
