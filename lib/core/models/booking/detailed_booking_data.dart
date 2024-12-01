import 'package:json_annotation/json_annotation.dart';

part 'detailed_booking_data.g.dart';

@JsonSerializable()
class DetailedBookingData {
  final int id;

  @JsonKey(fromJson: _parseInt)
  final int userId;

  final String implementationLocation;

  final String implementationTime;

  @JsonKey(defaultValue: '')
  final String car;
  // Edited by: nadeen mohamed
  // Edited at date: 7/11/2024
  // Edit note: make status nullable
  final String? status;

  final String implementationDate;

  final String? address;

  final dynamic servicePrice;

  final int? serviceId;

  final String serviceImage;

  final String serviceName;

  final String? carName;
  final String? carColor;
  final String? carNumber;
  final String? carImage;

  @JsonKey(fromJson: _parseDouble)
  final double? longitude;

  @JsonKey(fromJson: _parseDouble)
  final double? latitude;

  DetailedBookingData({
    required this.id,
    required this.userId,
    required this.implementationLocation,
    required this.implementationTime,
    required this.car,
    this.status,
    required this.implementationDate,
    this.address,
    required this.servicePrice,
    required this.serviceImage,
    required this.serviceName,
    this.serviceId,
    this.longitude,
    this.latitude,
    this.carColor,
    this.carName,
    this.carNumber,
    this.carImage,
  });

  // Static method to parse integer values
  static int _parseInt(dynamic i) => int.tryParse(i.toString()) ?? 0;

  // Static method to parse double values
  static double _parseDouble(dynamic i) => double.tryParse(i.toString()) ?? 0.0;

  factory DetailedBookingData.fromJson(Map<String, dynamic> json) =>
      _$DetailedBookingDataFromJson(json);

  Map<String, dynamic> toJson() => _$DetailedBookingDataToJson(this);
}
