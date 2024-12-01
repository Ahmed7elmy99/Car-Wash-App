// To parse this JSON data, do
//
//     final contactUsModel = contactUsModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'contact_us_model.g.dart';

ContactUsModel contactUsModelFromJson(String str) =>
    ContactUsModel.fromJson(json.decode(str));

String contactUsModelToJson(ContactUsModel data) => json.encode(data.toJson());

@JsonSerializable()
class ContactUsModel {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "fullName")
  String fullName;
  @JsonKey(name: "email")
  String email;
  @JsonKey(name: "mobile")
  String mobile;
  @JsonKey(name: "message")
  String message;

  ContactUsModel({
    required this.id,
    required this.fullName,
    required this.email,
    required this.mobile,
    required this.message,
  });

  factory ContactUsModel.fromJson(Map<String, dynamic> json) =>
      _$ContactUsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ContactUsModelToJson(this);
}
