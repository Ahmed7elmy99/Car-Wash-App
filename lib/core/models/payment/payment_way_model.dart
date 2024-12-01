import 'package:json_annotation/json_annotation.dart';

part 'payment_way_model.g.dart';

@JsonSerializable()
class PaymentWayModel {
  final int id;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @JsonKey(name: 'is_active')
  // Ghaith(5/11/2024)
  // Ghaith: changed the type from String to int
  final int isActive;
  @JsonKey(name: 'PaymentMethodId')
  // Ghaith(5/11/2024)
  // Ghaith: changed the type from String to int
  final int paymentMethodId;
  @JsonKey(name: 'PaymentMethodAr')
  final String paymentMethodAr;
  @JsonKey(name: 'PaymentMethodEn')
  final String paymentMethodEn;
  @JsonKey(name: 'PaymentMethodCode')
  final String paymentMethodCode;
  @JsonKey(name: 'IsDirectPayment')
  // Ghaith(5/11/2024)
  // Ghaith: changed the type from String to int
  final int isDirectPayment;
  @JsonKey(name: 'ServiceCharge')
  final String serviceCharge;
  @JsonKey(name: 'TotalAmount')
  final String totalAmount;
  @JsonKey(name: 'CurrencyIso')
  final String? currencyIso;
  @JsonKey(name: 'ImageUrl')
  final String imageUrl;
  @JsonKey(name: 'IsEmbeddedSupported')
    // Ghaith(5/11/2024)
  // Ghaith: changed the type from String to int
  final int isEmbeddedSupported;
  @JsonKey(name: 'PaymentCurrencyIso')
  final String paymentCurrencyIso;

  PaymentWayModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.isActive,
    required this.paymentMethodId,
    required this.paymentMethodAr,
    required this.paymentMethodEn,
    required this.paymentMethodCode,
    required this.isDirectPayment,
    required this.serviceCharge,
    required this.totalAmount,
    this.currencyIso,
    required this.imageUrl,
    required this.isEmbeddedSupported,
    required this.paymentCurrencyIso,
  });

  factory PaymentWayModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentWayModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentWayModelToJson(this);
}
