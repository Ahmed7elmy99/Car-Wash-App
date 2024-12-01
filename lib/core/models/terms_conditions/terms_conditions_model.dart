import 'package:json_annotation/json_annotation.dart';

part 'terms_conditions_model.g.dart';

@JsonSerializable()
class TermsModel {
  final int id;
  final String text;

  TermsModel({
    required this.id,
    required this.text,
  });
  factory TermsModel.fromJson(Map<String, dynamic> json) =>
      _$TermsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TermsModelToJson(this);
}
