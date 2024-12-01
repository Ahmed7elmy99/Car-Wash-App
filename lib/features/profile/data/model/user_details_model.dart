import 'package:flutter/material.dart';

class UserDetails {
  final Widget icon;
  String? data;
  bool isBeingEdited;
  bool isPasswordField;
  TextEditingController controller;
  UserDetails({
    required this.icon,
    required this.data,
    this.isBeingEdited = false,
    this.isPasswordField = false,
    required this.controller,
  });
  UserDetails copyWith({
    Widget? icon,
    String? data,
    bool? isBeignEdited,
    bool? isPasswordField,
    TextEditingController? controller,
  }) {
    return UserDetails(
      icon: icon ?? this.icon,
      data: data ?? this.data,
      isBeingEdited: isBeingEdited,
      isPasswordField: isPasswordField ?? this.isPasswordField,
      controller: controller ?? TextEditingController(),
    );
  }
}
