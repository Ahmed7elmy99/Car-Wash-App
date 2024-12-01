// Created by: Nadeen Mohamed
// Created at date: 10/11/2024
// Create Branch Model contains : id,address,name,longitude,latitude

import 'package:json_annotation/json_annotation.dart';
part 'branch_model.g.dart';

@JsonSerializable()
class BranchModel {
  final int id;
  final String address;
  final String name;
  final String longitude;
  final String latitude;

  BranchModel({required this.id, required this.address, required this.name, required this.longitude, required this.latitude});
  
   factory BranchModel.fromJson(Map<String, dynamic> json) {
    print('branchModel JSON: $json'); // Debug log
    return _$BranchModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$BranchModelToJson(this);

}
