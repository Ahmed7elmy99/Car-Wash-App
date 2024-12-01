import 'package:json_annotation/json_annotation.dart';

part 'service_model.g.dart';

// start: created by helmy
//creat At Date (26/10/2024)
@JsonSerializable()
class ServiceModel {
  final int id;
  final String name;
  final String description;
  final String price;
  final String time;
  final String slug;
  final String image;

  ServiceModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.time,
    required this.slug,
    required this.image,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceModelToJson(this);
}
