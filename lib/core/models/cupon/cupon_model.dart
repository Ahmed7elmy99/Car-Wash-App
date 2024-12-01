import 'package:json_annotation/json_annotation.dart';
part 'cupon_model.g.dart';
// start: edited by helmy
//creat At Date (4/11/2024)

@JsonSerializable()
class CuponModel {
  final String discountType;
  final dynamic discountValue;
  CuponModel({required this.discountValue, required this.discountType});
  factory CuponModel.fromJson(Map<String, dynamic> json) {
    print('ProductModel JSON: $json'); // Debug log
    return _$CuponModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CuponModelToJson(this);
}
