// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product_to_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddProductToCartModel _$AddProductToCartModelFromJson(
        Map<String, dynamic> json) =>
    AddProductToCartModel(
      id: json['id'],
      quantity: json['quantity'],
      productId: json['productId'],
      userId: json['userId'],
    );

Map<String, dynamic> _$AddProductToCartModelToJson(
        AddProductToCartModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'productId': instance.productId,
      'userId': instance.userId,
    };
