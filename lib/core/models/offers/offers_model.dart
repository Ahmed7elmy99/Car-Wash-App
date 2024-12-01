// To parse this JSON data, do
//
//     final offersModel = offersModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'offers_model.g.dart';

OffersModel offersModelFromJson(String str) => OffersModel.fromJson(json.decode(str));

String offersModelToJson(OffersModel data) => json.encode(data.toJson());

@JsonSerializable()
class OffersModel {
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "description")
  String description;
  @JsonKey(name: "beforeDiscount")
  String beforeDiscount;
  @JsonKey(name: "discount")
  int discount;
  @JsonKey(name: "finalPrice")
  int finalPrice;
  @JsonKey(name: "image")
  String image;
  @JsonKey(name: "plan")
  Plan plan;

  OffersModel({
    required this.title,
    required this.description,
    required this.beforeDiscount,
    required this.discount,
    required this.finalPrice,
    required this.image,
    required this.plan,
  });

  factory OffersModel.fromJson(Map<String, dynamic> json) => _$OffersModelFromJson(json);

  Map<String, dynamic> toJson() => _$OffersModelToJson(this);
}

@JsonSerializable()
class Plan {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "price")
  String price;
  @JsonKey(name: "packageName")
  String packageName;
  @JsonKey(name: "packageTime")
  String packageTime;
  @JsonKey(name: "description")
  String description;
  @JsonKey(name: "serviceItems")
  List<ServiceItem> serviceItems;

  Plan({
    required this.id,
    required this.name,
    required this.price,
    required this.packageName,
    required this.packageTime,
    required this.description,
    required this.serviceItems,
  });

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);

  Map<String, dynamic> toJson() => _$PlanToJson(this);
}

@JsonSerializable()
class ServiceItem {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "serviceName")
  String serviceName;
  @JsonKey(name: "numberTimesUsed")
  int numberTimesUsed;
  @JsonKey(name: "serviceTime")
  int serviceTime;
  @JsonKey(name: "serviceImage")
  String serviceImage;

  ServiceItem({
    required this.id,
    required this.serviceName,
    required this.numberTimesUsed,
    required this.serviceTime,
    required this.serviceImage,
  });

  factory ServiceItem.fromJson(Map<String, dynamic> json) => _$ServiceItemFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceItemToJson(this);
}
