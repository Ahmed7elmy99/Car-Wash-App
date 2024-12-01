// To parse this JSON data, do
//
//     final additionalProductModel = additionalProductModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'additional_product_model.g.dart';

AdditionalProductModel additionalProductModelFromJson(String str) => AdditionalProductModel.fromJson(json.decode(str));

String additionalProductModelToJson(AdditionalProductModel data) => json.encode(data.toJson());

@JsonSerializable()
class AdditionalProductModel {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "description")
  String description;
  @JsonKey(name: "price")
  String price;
  @JsonKey(name: "discountedPrice")
  dynamic discountedPrice;
  @JsonKey(name: "discountType")
  dynamic discountType;
  @JsonKey(name: "discountValue")
  dynamic discountValue;
  @JsonKey(name: "slug")
  String slug;
  @JsonKey(name: "quantity")
  dynamic quantity;
  @JsonKey(name: "category")
  String category;
  @JsonKey(name: "images")
  List<String> images;

  AdditionalProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.discountedPrice,
    required this.discountType,
    required this.discountValue,
    required this.slug,
    required this.quantity,
    required this.category,
    required this.images,
  });

  factory AdditionalProductModel.fromJson(Map<String, dynamic> json) => _$AdditionalProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$AdditionalProductModelToJson(this);
}
