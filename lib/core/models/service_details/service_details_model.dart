import 'package:json_annotation/json_annotation.dart';
part 'service_details_model.g.dart';

// start: created by helmy
//creat At Date (30/10/2024)
@JsonSerializable()
class ServiceDetailsModel {
  final int id;
  final String userId;
  final String implementationLocation;
  final String implementationTime;
  final String car;
  final String status;
  final String implementationDate;
  final String address;
  final String servicePrice;
  final String serviceImage;
  final String serviceName;
  ServiceDetailsModel({
    required this.id,
    required this.userId,
    required this.implementationLocation,
    required this.implementationTime,
    required this.car,
    required this.status,
    required this.implementationDate,
    required this.address,
    required this.servicePrice,
    required this.serviceImage,
    required this.serviceName,
  });
  factory ServiceDetailsModel.fromJson(Map<String, dynamic> json) {
    print('ProductModel JSON: $json'); // Debug log
    return _$ServiceDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ServiceDetailsModelToJson(this);
}
