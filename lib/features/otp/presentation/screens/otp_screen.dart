/*
edited by : Mohamed Waleed
edited at : 21/10/2024
edits : 
remove duplicate   static String id = "/OTP";

 */
import 'package:car_wash_mobile_app/features/otp/presentation/otp_cubit/otp_cubit.dart';
import 'package:car_wash_mobile_app/features/otp/presentation/widgets/otp_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtpScreen extends StatelessWidget {
  static String id = "/OTP";
  const OtpScreen({super.key});
  @override

  /// edited by naira (20/10/2024)
  /// edit: delete duplicated id variable
/*
This code defines the build method of a stateless widget (OtpScreen).
It returns a Scaffold widget with a SafeArea as its body,
which contains an instance of OtpScreenBody.
The SafeArea is set to only consider the top area (e.g., notch or status bar) when laying out its child.
 */
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: BlocProvider(
          create: (context) => OtpCubit(),
          child: const OtpScreenBody(),
        ),
      ),
    );
  }
}
