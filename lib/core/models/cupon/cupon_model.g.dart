// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CuponModel _$CuponModelFromJson(Map<String, dynamic> json) => CuponModel(
      discountValue: json['discountValue'],
      discountType: json['discountType'] as String,
    );

Map<String, dynamic> _$CuponModelToJson(CuponModel instance) =>
    <String, dynamic>{
      'discountType': instance.discountType,
      'discountValue': instance.discountValue,
    };
