import 'package:car_wash_mobile_app/features/cart/presentaion/widgets/succeess_message_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Created by: Nadeen Mohamed
// Created at date: 20/10/2024
// This widget for the success message screen
class SuccessMessageScreen extends StatelessWidget {
  static const String id = '/successMessageScreen';
  const SuccessMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              size: 24.r,
              Icons.close,
            ),
          ),
        ],
      ),
      body: const SafeArea(child: SuccessMessageBody()),
    );
  }
}
