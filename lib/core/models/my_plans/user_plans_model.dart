import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_plans_model.g.dart';

@JsonSerializable()
class UserPlansModel {
  final int id;
  final String name;
  final String price;
  final String description;
  final int packageTime;
  final String startDate;
  final String endDate;
  final String status;
  @JsonKey(name: 'is_active')
  final int isActive;
  final String packageName;

  UserPlansModel(
      {required this.id,
      required this.description,
      required this.name,
      required this.price,
      required this.packageTime,
      required this.startDate,
      required this.endDate,
      required this.status,
      required this.isActive,
      required this.packageName,
   });

  factory UserPlansModel.fromJson(Map<String, dynamic> json) =>
      _$UserPlansModelFromJson(json);
  toJson() => _$UserPlansModelToJson(this);
}
