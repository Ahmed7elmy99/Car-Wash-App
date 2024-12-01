// To parse this JSON data, do
//
//     final branchesModel = branchesModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'branches_model.g.dart';

BranchesModel branchesModelFromJson(String str) => BranchesModel.fromJson(json.decode(str));

String branchesModelToJson(BranchesModel data) => json.encode(data.toJson());

@JsonSerializable()
class BranchesModel {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "address")
  String address;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "longitude")
  String longitude;
  @JsonKey(name: "latitude")
  String latitude;

  BranchesModel({
    required this.id,
    required this.address,
    required this.name,
    required this.longitude,
    required this.latitude,
  });

  factory BranchesModel.fromJson(Map<String, dynamic> json) => _$BranchesModelFromJson(json);

  Map<String, dynamic> toJson() => _$BranchesModelToJson(this);
}
