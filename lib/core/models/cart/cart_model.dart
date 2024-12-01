// To parse this JSON data, do
//
//     final cartItemModel = cartItemModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'cart_model.g.dart';

CartItemModel cartItemModelFromJson(String str) =>
    CartItemModel.fromJson(json.decode(str));

String cartItemModelToJson(CartItemModel data) => json.encode(data.toJson());

@JsonSerializable()
class CartItemModel {
  @JsonKey(name: "status")
  String status;
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "data")
  List<Datum> data;
  @JsonKey(name: "totalPrice")
  int totalPrice;

  CartItemModel({
    required this.status,
    required this.message,
    required this.data,
    required this.totalPrice,
  });

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartItemModelToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "quantity")
  int quantity;
  @JsonKey(name: "userId")
  int userId;
  @JsonKey(name: "itemId")
  int itemId;
  @JsonKey(name: "imageProduct")
  List<String>? imageProduct;
  @JsonKey(name: "nameProduct")
  String? nameProduct;
  @JsonKey(name: "priceProduct")
  dynamic priceProduct;
  @JsonKey(name: "namePlan")
  dynamic namePlan;
  @JsonKey(name: "pricePlan")
  dynamic pricePlan;
  @JsonKey(name: "imageService")
  String? imageService;
  @JsonKey(name: "nameService")
  String? nameService;
  @JsonKey(name: "priceService")
  dynamic priceService;
  @JsonKey(name: "itemTotalPrice")
  int itemTotalPrice;

  Datum({
    required this.id,
    required this.quantity,
    required this.userId,
    required this.itemId,
    required this.imageProduct,
    required this.nameProduct,
    required this.priceProduct,
    required this.namePlan,
    required this.pricePlan,
    required this.imageService,
    required this.nameService,
    required this.priceService,
    required this.itemTotalPrice,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
  Map<String, dynamic> toJson() => _$DatumToJson(this);
}