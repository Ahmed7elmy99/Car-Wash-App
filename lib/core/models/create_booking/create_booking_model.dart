import 'package:json_annotation/json_annotation.dart';

part 'create_booking_model.g.dart';

@JsonSerializable()
class BookingModel {
  final String implementationLocation;
  final String implementationTime;
  final String? carId;
  final dynamic service;
  final String car;
  final String implementationDate;
  final dynamic address;
  final double? latitude;
  final double? longitude;

  BookingModel(
      this.implementationLocation,
      this.implementationTime,
      this.car,
      this.implementationDate,
      this.address,
      this.carId,
      this.service,
      this.latitude,
      this.longitude);

  factory BookingModel.fromJson(Map<String, dynamic> json) =>
      _$BookingModelFromJson(json);

  Map<String, dynamic> toJson() => _$BookingModelToJson(this);
}
