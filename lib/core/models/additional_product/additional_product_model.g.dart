// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdditionalProductModel _$AdditionalProductModelFromJson(
        Map<String, dynamic> json) =>
    AdditionalProductModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      discountedPrice: json['discountedPrice'],
      discountType: json['discountType'],
      discountValue: json['discountValue'],
      slug: json['slug'] as String,
      quantity: json['quantity'],
      category: json['category'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AdditionalProductModelToJson(
        AdditionalProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'discountedPrice': instance.discountedPrice,
      'discountType': instance.discountType,
      'discountValue': instance.discountValue,
      'slug': instance.slug,
      'quantity': instance.quantity,
      'category': instance.category,
      'images': instance.images,
    };
