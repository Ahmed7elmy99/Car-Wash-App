// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_from_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoveFromCartModel _$RemoveFromCartModelFromJson(Map<String, dynamic> json) =>
    RemoveFromCartModel(
      status: json['status'] as String,
      message: json['message'] as String,
      data: json['data'] as List<dynamic>,
    );

Map<String, dynamic> _$RemoveFromCartModelToJson(
        RemoveFromCartModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
