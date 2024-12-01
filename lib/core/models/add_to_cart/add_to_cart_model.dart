// To parse this JSON data, do
//
//     final addToCartModel = addToCartModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'add_to_cart_model.g.dart';

AddToCartModel addToCartModelFromJson(String str) =>
    AddToCartModel.fromJson(json.decode(str));

String addToCartModelToJson(AddToCartModel data) => json.encode(data.toJson());

@JsonSerializable()
class AddToCartModel {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "quantity")
  int quantity;
  @JsonKey(name: "userId")
  int userId;
  @JsonKey(name: "planId")
  String planId;

  AddToCartModel({
    required this.id,
    required this.quantity,
    required this.userId,
    required this.planId,
  });

  factory AddToCartModel.fromJson(Map<String, dynamic> json) =>
      _$AddToCartModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddToCartModelToJson(this);
}
