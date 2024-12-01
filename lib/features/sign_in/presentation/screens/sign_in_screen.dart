/*
edited by : Mohamed Waleed
edited at : 16/10/2024
edits :

enter_phone text align was changed
 */

import 'package:car_wash_mobile_app/features/sign_in/presentation/sign_in_cubit/sign_in_cubit.dart';
import 'package:car_wash_mobile_app/features/sign_in/presentation/widgets/sign_in_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  static const String id = "/SignInScreen";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(),
      child: const SignInBody(),
    );
  }
}
