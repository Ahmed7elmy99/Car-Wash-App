// To parse this JSON data, do
//
//     final logoutModel = logoutModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'logout_model.g.dart';

LogoutModel logoutModelFromJson(String str) =>
    LogoutModel.fromJson(json.decode(str));

String logoutModelToJson(LogoutModel data) => json.encode(data.toJson());

@JsonSerializable()
class LogoutModel {
  @JsonKey(name: "status")
  String status;
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "data")
  List<dynamic> data;

  LogoutModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory LogoutModel.fromJson(Map<String, dynamic> json) =>
      _$LogoutModelFromJson(json);

  Map<String, dynamic> toJson() => _$LogoutModelToJson(this);
}
