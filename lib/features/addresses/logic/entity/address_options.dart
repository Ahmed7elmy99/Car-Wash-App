import 'package:flutter/material.dart';

class AddressesOptions {
  AddressesOptions({
    required this.name,
    required this.icon,
  });

  final Widget icon;
  final String name;
}

enum AddressesMethodChoices {
  AddressesItem1,
  AddressesItem2,
}
