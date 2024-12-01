// To parse this JSON data, do
//
//     final allServicesModel = allServicesModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'all_services_model.g.dart';

AllServicesModel allServicesModelFromJson(String str) =>
    AllServicesModel.fromJson(json.decode(str));

String allServicesModelToJson(AllServicesModel data) =>
    json.encode(data.toJson());

@JsonSerializable()
class AllServicesModel {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "description")
  String description;
  @JsonKey(name: "price")
  String price;
  // Edited by: Nadeen Mohamed
  // Edited at date: 10/11/2024
  // Edite note: Add discountedPrice,discountType and discountValue parameters
  @JsonKey(name: "discountedPrice")
  String? discountedPrice;
  @JsonKey(name: "discountType")
  String? discountType;
  @JsonKey(name: "discountValue")
  String? discountValue;
  @JsonKey(name: "time")
  int time;
  @JsonKey(name: "slug")
  String slug;
  @JsonKey(name: "image")
  String image;
  @JsonKey(name: "AdditionalProducts")
  List<AdditionalProduct> additionalProducts;

  AllServicesModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    // Edited by: Nadeen Mohamed
    // Edited at date: 10/11/2024
    // Edite note: Add discountedPrice,discountType and discountValue parameters to the constructor
    this.discountType,
    this.discountValue,
    this.discountedPrice,
    required this.time,
    required this.slug,
    required this.image,
    required this.additionalProducts,
  });

  factory AllServicesModel.fromJson(Map<String, dynamic> json) =>
      _$AllServicesModelFromJson(json);

  Map<String, dynamic> toJson() => _$AllServicesModelToJson(this);
}

@JsonSerializable()
class AdditionalProduct {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "slug")
  String slug;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "price")
  String price;
  @JsonKey(name: "images")
  // Edited by: Nadeen Mohamed
  // Edited at date: 11/11/2024
  // Convert the data type from list<String> to String
  String images;

  AdditionalProduct({
    required this.id,
    required this.slug,
    required this.name,
    required this.price,
    required this.images,
  });

  factory AdditionalProduct.fromJson(Map<String, dynamic> json) =>
      _$AdditionalProductFromJson(json);

  Map<String, dynamic> toJson() => _$AdditionalProductToJson(this);
}