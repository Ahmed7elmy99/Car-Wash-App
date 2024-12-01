import 'package:json_annotation/json_annotation.dart';

part 'address_model.g.dart';

@JsonSerializable()
class AddressModel {
  final int id;
  final String nameAddress;
  final String region;
  final String city;
  final String neighborhood;
  final String street;
  @JsonKey(name: "default")
  final String isDefault;
  AddressModel({
    required this.id,
    required this.nameAddress,
    required this.region,
    required this.city,
    required this.neighborhood,
    required this.street,
    required this.isDefault,
  });
  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}
