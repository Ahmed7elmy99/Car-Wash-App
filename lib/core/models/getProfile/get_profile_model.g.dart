// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProfileModel _$GetProfileModelFromJson(Map<String, dynamic> json) =>
    GetProfileModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      mobile: json['mobile'],
      profileImage: json['profileImage'],
      location: json['location'],
    );

Map<String, dynamic> _$GetProfileModelToJson(GetProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
      'profileImage': instance.profileImage,
      'location': instance.location,
    };
