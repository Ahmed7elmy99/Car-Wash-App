// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_us_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactUsModel _$ContactUsModelFromJson(Map<String, dynamic> json) =>
    ContactUsModel(
      id: (json['id'] as num).toInt(),
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      mobile: json['mobile'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$ContactUsModelToJson(ContactUsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'mobile': instance.mobile,
      'message': instance.message,
    };
