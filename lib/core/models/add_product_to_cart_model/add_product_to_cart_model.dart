// To parse this JSON data, do
//
//     final addProductToCartModel = addProductToCartModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'add_product_to_cart_model.g.dart';

AddProductToCartModel addProductToCartModelFromJson(String str) => AddProductToCartModel.fromJson(json.decode(str));

String addProductToCartModelToJson(AddProductToCartModel data) => json.encode(data.toJson());

@JsonSerializable()
class AddProductToCartModel {
    @JsonKey(name: "id")
   dynamic id;
    @JsonKey(name: "quantity")
     dynamic  quantity;
    @JsonKey(name: "productId")
 dynamic  productId;
    @JsonKey(name: "userId")
   dynamic  userId;

    AddProductToCartModel({
        required this.id,
        required this.quantity,
        required this.productId,
        required this.userId,
    });

    factory AddProductToCartModel.fromJson(Map<String, dynamic> json) => _$AddProductToCartModelFromJson(json);

    Map<String, dynamic> toJson() => _$AddProductToCartModelToJson(this);
}
