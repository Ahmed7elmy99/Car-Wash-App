// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToCartModel _$AddToCartModelFromJson(Map<String, dynamic> json) =>
    AddToCartModel(
      id: (json['id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      planId: json['planId'] as String,
    );

Map<String, dynamic> _$AddToCartModelToJson(AddToCartModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'userId': instance.userId,
      'planId': instance.planId,
    };
