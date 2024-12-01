import 'package:json_annotation/json_annotation.dart';
part 'cars_types_model.g.dart';
// start: created by helmy
//creat At Date (6/11/2024)
@JsonSerializable()
class CarsTypesModel {
  final int id;
  final String name;
  final String type;

  CarsTypesModel({
    required this.id,
    required this.name,
    required this.type,
  });

   factory CarsTypesModel.fromJson(Map<String, dynamic> json) {
    print('ProductModel JSON: $json'); // Debug log
    return _$CarsTypesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CarsTypesModelToJson(this);

}