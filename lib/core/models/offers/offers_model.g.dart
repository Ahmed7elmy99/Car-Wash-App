// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OffersModel _$OffersModelFromJson(Map<String, dynamic> json) => OffersModel(
      title: json['title'] as String,
      description: json['description'] as String,
      beforeDiscount: json['beforeDiscount'] as String,
      discount: (json['discount'] as num).toInt(),
      finalPrice: (json['finalPrice'] as num).toInt(),
      image: json['image'] as String,
      plan: Plan.fromJson(json['plan'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OffersModelToJson(OffersModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'beforeDiscount': instance.beforeDiscount,
      'discount': instance.discount,
      'finalPrice': instance.finalPrice,
      'image': instance.image,
      'plan': instance.plan,
    };

Plan _$PlanFromJson(Map<String, dynamic> json) => Plan(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: json['price'] as String,
      packageName: json['packageName'] as String,
      packageTime: json['packageTime'] as String,
      description: json['description'] as String,
      serviceItems: (json['serviceItems'] as List<dynamic>)
          .map((e) => ServiceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlanToJson(Plan instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'packageName': instance.packageName,
      'packageTime': instance.packageTime,
      'description': instance.description,
      'serviceItems': instance.serviceItems,
    };

ServiceItem _$ServiceItemFromJson(Map<String, dynamic> json) => ServiceItem(
      id: (json['id'] as num).toInt(),
      serviceName: json['serviceName'] as String,
      numberTimesUsed: (json['numberTimesUsed'] as num).toInt(),
      serviceTime: (json['serviceTime'] as num).toInt(),
      serviceImage: json['serviceImage'] as String,
    );

Map<String, dynamic> _$ServiceItemToJson(ServiceItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serviceName': instance.serviceName,
      'numberTimesUsed': instance.numberTimesUsed,
      'serviceTime': instance.serviceTime,
      'serviceImage': instance.serviceImage,
    };
