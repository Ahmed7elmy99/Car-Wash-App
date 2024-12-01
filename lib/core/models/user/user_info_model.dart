import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_model.g.dart';

@JsonSerializable()
class UserInfoModel {
  final int id;
  final String name;
  final String? email;
  final String mobile;
  final String profileImage;

  UserInfoModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.mobile,
      required this.profileImage});
  factory UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserInfoModelToJson(this);
}
