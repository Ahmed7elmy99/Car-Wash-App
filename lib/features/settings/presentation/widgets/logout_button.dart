import 'dart:developer';

import 'package:car_wash_mobile_app/core/shared_pref/shared_pref.dart';
import 'package:car_wash_mobile_app/features/settings/presentation/cubit/logout_cubit.dart';
import 'package:car_wash_mobile_app/features/settings/presentation/widgets/setting_item.dart';
import 'package:car_wash_mobile_app/features/sign_in/presentation/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogoutButton extends StatefulWidget {
  const LogoutButton({super.key});

  @override
  State<LogoutButton> createState() => _LogoutButtonState();
}

class _LogoutButtonState extends State<LogoutButton> {
  late LogoutCubit logoutCubit;

  @override
  void initState() {
    logoutCubit = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogoutCubit, LogoutState>(
      listener: (context, state) async {
        print('Current state: $state'); // Log the current state
        if (state is LogoutStateLoading) {
        } else if (state is LogoutStateSuccess) {
          // Get.offAllNamed(SignInScreen.id);
          context.go(SignInScreen.id);
        } else if (state is LogoutStateError) {
          state.error.showError(context);
        }
      },
      builder: (context, state) {
        return state is LogoutStateLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SettingItem(
                text: 'log_out',
                isArrow: true,
                onTap: () {
                  logoutCubit.userLogout();
                  log('logout User');
                },
              );
      },
    );
  }
}
