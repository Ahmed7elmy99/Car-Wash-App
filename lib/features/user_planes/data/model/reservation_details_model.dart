// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

part 'reservation_details_model.g.dart';

@JsonSerializable()
class ReservationDetailsModel {
  
  @JsonKey(name: 'service_id')
  final int serviceId;

  @JsonKey(name: 'address_id')
  final int addressId;

  @JsonKey(name: 'my_car_id')
  final int myCarId;

  @JsonKey(name: 'implementation_date')
  final String implementationDate;

  @JsonKey(name: 'implementation_time')
  final String implementationTime;

  @JsonKey(name: 'implementation_location')
  final String implementationLocation;

  ReservationDetailsModel({
    required this.serviceId,
    required this.addressId,
    required this.myCarId,
    required this.implementationDate,
    required this.implementationTime,
    required this.implementationLocation,
  });

  /// Factory to create an empty instance with default values
  factory ReservationDetailsModel.empty() => ReservationDetailsModel(
        serviceId: -1,
        addressId: -1,
        myCarId: -1,
        implementationDate: '',
        implementationTime: '',
        implementationLocation: '',
      );

  /// Checks if any required field is empty or invalid
  bool isEmpty() {
    return serviceId == -1 ||
        addressId == -1 ||
        myCarId == -1 ||
        implementationDate.isEmpty ||
        implementationTime.isEmpty ||
        implementationLocation.isEmpty;
  }

  /// Displays error messages for specific empty fields
  void showError(BuildContext context) {
    if (serviceId == -1) {
      _showSnackBar(context, "please_select_a_service".tr);
    } else if (addressId == -1) {
      _showSnackBar(context, "please_select_an_address".tr);
    } else if (myCarId == -1) {
      _showSnackBar(context, "please_select_a_car".tr);
    } else if (implementationDate.isEmpty) {
      _showSnackBar(context, "please_select_a_date".tr);
    } else if (implementationTime.isEmpty) {
      _showSnackBar(context, "please_select_a_time".tr);
    } else if (implementationLocation.isEmpty) {
      _showSnackBar(context, "please_select_a_location".tr);
    }
  }

  /// Helper method to show snackbar
  void _showSnackBar(BuildContext context, String message) {
    showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.error(
        message: message,
      ),
    );
  }

  /// Factory method to generate the object from JSON
  factory ReservationDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationDetailsModelFromJson(json);

  /// Method to convert the object to JSON
  Map<String, dynamic> toJson() => _$ReservationDetailsModelToJson(this);

  ReservationDetailsModel copyWith({
    int? serviceId,
    int? addressId,
    int? myCarId,
    String? implementationDate,
    String? implementationTime,
    String? implementationLocation,
  }) {
    return ReservationDetailsModel(
      serviceId: serviceId ?? this.serviceId,
      addressId: addressId ?? this.addressId,
      myCarId: myCarId ?? this.myCarId,
      implementationDate: implementationDate ?? this.implementationDate,
      implementationTime: implementationTime ?? this.implementationTime,
      implementationLocation:
          implementationLocation ?? this.implementationLocation,
    );
  }

  @override
  String toString() {
    return 'ReservationDetailsModel(serviceId: $serviceId, addressId: $addressId, myCarId: $myCarId, implementationDate: $implementationDate, implementationTime: $implementationTime, implementationLocation: $implementationLocation)';
  }
}
