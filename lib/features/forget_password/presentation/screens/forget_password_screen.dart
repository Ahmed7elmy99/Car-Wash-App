import 'package:car_wash_mobile_app/core/widgets/close_icon_button.dart';
import 'package:car_wash_mobile_app/features/forget_password/presentation/cubit/cubit/forget_password_cubit.dart';
import 'package:car_wash_mobile_app/features/forget_password/presentation/widgets/forget_password_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static String id = '/forget_password';
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CloseIconButton(),
      ),
      body: BlocProvider(
        create: (context) => ForgetPasswordCubit(),
        child: const ForgetPasswordScreenBody(),
      ),
    );
  }
}
