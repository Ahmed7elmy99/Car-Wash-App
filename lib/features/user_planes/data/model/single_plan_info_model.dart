import 'package:car_wash_mobile_app/core/models/all_plans/all_plans_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'single_plan_info_model.g.dart';

@JsonSerializable()
class SinglePlanInfoModel {
  final int id;
  final String name;
  final String price;
  final String packageName;
  final String packageTime;

  final String description;
  final String status;
  final String endDate;
  final List<AllPlanServiceItem> serviceItems;

  SinglePlanInfoModel({
    required this.id,
    required this.name,
    required this.price,
    required this.packageName,
    required this.packageTime,
    required this.description,
    required this.status,
    required this.endDate,
    required this.serviceItems,
  });

  // JSON serialization methods
  factory SinglePlanInfoModel.fromJson(Map<String, dynamic> json) =>
      _$SinglePlanInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$SinglePlanInfoModelToJson(this);
}
