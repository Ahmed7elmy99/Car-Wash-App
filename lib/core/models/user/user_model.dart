// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:car_wash_mobile_app/core/models/user/user_info_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  UserInfoModel user;
  final String token;
  @JsonKey(name: "refresh_token")
  final String refreshToken;
  UserModel({
    required this.user,
    required this.token,
    required this.refreshToken,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
