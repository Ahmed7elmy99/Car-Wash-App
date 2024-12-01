// To parse this JSON data, do
//
//     final getProfileModel = getProfileModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_profile_model.g.dart';

GetProfileModel getProfileModelFromJson(String str) =>
    GetProfileModel.fromJson(json.decode(str));

String getProfileModelToJson(GetProfileModel data) =>
    json.encode(data.toJson());

@JsonSerializable()
class GetProfileModel {
  @JsonKey(name: "id")
  dynamic id;
  @JsonKey(name: "name")
  dynamic name;
  @JsonKey(name: "email")
  dynamic email;
  @JsonKey(name: "mobile")
  dynamic mobile;
  @JsonKey(name: "profileImage")
  dynamic profileImage;
  dynamic location;

  GetProfileModel({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    required this.profileImage,
    this.location,
  });

  factory GetProfileModel.fromJson(Map<String, dynamic> json) =>
      _$GetProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetProfileModelToJson(this);

  GetProfileModel copyWith(
      {dynamic id,
      dynamic name,
      dynamic email,
      dynamic mobile,
      dynamic profileImage}) {
    return GetProfileModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      mobile: mobile ?? this.mobile,
      profileImage: profileImage ?? this.profileImage,
    );
  }
}
