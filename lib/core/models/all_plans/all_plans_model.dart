// To parse this JSON data, do
//
//     final allPlansModel = allPlansModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'all_plans_model.g.dart';

AllPlansModel allPlansModelFromJson(String str) => AllPlansModel.fromJson(json.decode(str));

String allPlansModelToJson(AllPlansModel data) => json.encode(data.toJson());

@JsonSerializable()
class AllPlansModel {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "price")
  dynamic price;
  @JsonKey(name: "packageName")
  String packageName;
  @JsonKey(name: "packageTime")
  String packageTime;
  @JsonKey(name: "description")
  String description;
  @JsonKey(name: "serviceItems")
  List<AllPlanServiceItem> serviceItems;

  AllPlansModel({
    required this.id,
    required this.name,
    required this.price,
    required this.packageName,
    required this.packageTime,
    required this.description,
    required this.serviceItems,
  });

  factory AllPlansModel.fromJson(Map<String, dynamic> json) => _$AllPlansModelFromJson(json);

  Map<String, dynamic> toJson() => _$AllPlansModelToJson(this);
}

@JsonSerializable()
class AllPlanServiceItem {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "serviceName")
  String serviceName;
  @JsonKey(name: "serviceTime")
  int serviceTime;
  @JsonKey(name: "numberTimesUsed")
  int numberTimesUsed;
  @JsonKey(name: "serviceImage")
  String serviceImage;

  AllPlanServiceItem({
    required this.id,
    required this.serviceName,
    required this.serviceTime,
    required this.numberTimesUsed,
    required this.serviceImage,
  });

  factory AllPlanServiceItem.fromJson(Map<String, dynamic> json) => _$AllPlanServiceItemFromJson(json);

  Map<String, dynamic> toJson() => _$AllPlanServiceItemToJson(this);
}

