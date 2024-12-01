// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) =>
    CartItemModel(
      status: json['status'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPrice: (json['totalPrice'] as num).toInt(),
    );

Map<String, dynamic> _$CartItemModelToJson(CartItemModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'totalPrice': instance.totalPrice,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: (json['id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      itemId: (json['itemId'] as num).toInt(),
      imageProduct: (json['imageProduct'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nameProduct: json['nameProduct'] as String?,
      priceProduct: json['priceProduct'],
      namePlan: json['namePlan'],
      pricePlan: json['pricePlan'],
      imageService: json['imageService'] as String?,
      nameService: json['nameService'] as String?,
      priceService: json['priceService'],
      itemTotalPrice: (json['itemTotalPrice'] as num).toInt(),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'userId': instance.userId,
      'itemId': instance.itemId,
      'imageProduct': instance.imageProduct,
      'nameProduct': instance.nameProduct,
      'priceProduct': instance.priceProduct,
      'namePlan': instance.namePlan,
      'pricePlan': instance.pricePlan,
      'imageService': instance.imageService,
      'nameService': instance.nameService,
      'priceService': instance.priceService,
      'itemTotalPrice': instance.itemTotalPrice,
    };
