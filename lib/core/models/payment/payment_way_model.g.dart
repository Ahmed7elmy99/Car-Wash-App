// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_way_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentWayModel _$PaymentWayModelFromJson(Map<String, dynamic> json) =>
    PaymentWayModel(
      id: (json['id'] as num).toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      isActive: (json['is_active'] as num).toInt(),
      paymentMethodId: (json['PaymentMethodId'] as num).toInt(),
      paymentMethodAr: json['PaymentMethodAr'] as String,
      paymentMethodEn: json['PaymentMethodEn'] as String,
      paymentMethodCode: json['PaymentMethodCode'] as String,
      isDirectPayment: (json['IsDirectPayment'] as num).toInt(),
      serviceCharge: json['ServiceCharge'] as String,
      totalAmount: json['TotalAmount'] as String,
      currencyIso: json['CurrencyIso'] as String?,
      imageUrl: json['ImageUrl'] as String,
      isEmbeddedSupported: (json['IsEmbeddedSupported'] as num).toInt(),
      paymentCurrencyIso: json['PaymentCurrencyIso'] as String,
    );

Map<String, dynamic> _$PaymentWayModelToJson(PaymentWayModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'is_active': instance.isActive,
      'PaymentMethodId': instance.paymentMethodId,
      'PaymentMethodAr': instance.paymentMethodAr,
      'PaymentMethodEn': instance.paymentMethodEn,
      'PaymentMethodCode': instance.paymentMethodCode,
      'IsDirectPayment': instance.isDirectPayment,
      'ServiceCharge': instance.serviceCharge,
      'TotalAmount': instance.totalAmount,
      'CurrencyIso': instance.currencyIso,
      'ImageUrl': instance.imageUrl,
      'IsEmbeddedSupported': instance.isEmbeddedSupported,
      'PaymentCurrencyIso': instance.paymentCurrencyIso,
    };
