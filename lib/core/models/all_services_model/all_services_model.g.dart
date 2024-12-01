// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_services_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllServicesModel _$AllServicesModelFromJson(Map<String, dynamic> json) =>
    AllServicesModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      discountType: json['discountType'] as String?,
      discountValue: json['discountValue'] as String?,
      discountedPrice: json['discountedPrice'] as String?,
      time: (json['time'] as num).toInt(),
      slug: json['slug'] as String,
      image: json['image'] as String,
      additionalProducts: (json['AdditionalProducts'] as List<dynamic>)
          .map((e) => AdditionalProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllServicesModelToJson(AllServicesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'discountedPrice': instance.discountedPrice,
      'discountType': instance.discountType,
      'discountValue': instance.discountValue,
      'time': instance.time,
      'slug': instance.slug,
      'image': instance.image,
      'AdditionalProducts': instance.additionalProducts,
    };

AdditionalProduct _$AdditionalProductFromJson(Map<String, dynamic> json) =>
    AdditionalProduct(
      id: (json['id'] as num).toInt(),
      slug: json['slug'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      images: json['images'] as String,
    );

Map<String, dynamic> _$AdditionalProductToJson(AdditionalProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'price': instance.price,
      'images': instance.images,
    };
