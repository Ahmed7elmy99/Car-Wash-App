// To parse this JSON data, do
//
//     final removeFromCartModel = removeFromCartModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'remove_from_cart_model.g.dart';

RemoveFromCartModel removeFromCartModelFromJson(String str) => RemoveFromCartModel.fromJson(json.decode(str));

String removeFromCartModelToJson(RemoveFromCartModel data) => json.encode(data.toJson());

@JsonSerializable()
class RemoveFromCartModel {
    @JsonKey(name: "status")
    String status;
    @JsonKey(name: "message")
    String message;
    @JsonKey(name: "data")
    List<dynamic> data;

    RemoveFromCartModel({
        required this.status,
        required this.message,
        required this.data,
    });

    factory RemoveFromCartModel.fromJson(Map<String, dynamic> json) => _$RemoveFromCartModelFromJson(json);

    Map<String, dynamic> toJson() => _$RemoveFromCartModelToJson(this);
}
