import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/core/utils/storage.dart';
import 'package:car_wash_mobile_app/features/sign_in/logic/repo/sign_in_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_cubit.freezed.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  String countryCode = "";

  SignInCubit() : super(const SignInState.initial());
  void signIn() {
    if (mobileController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      String mobileNumber = mobileController.text;
      if (mobileController.text.startsWith("0") && countryCode.endsWith("0")) {
        mobileNumber = mobileController.text.substring(1);
      }
      mobileNumber = (countryCode + mobileNumber).substring(1);
      emit(const SignInLoading());

      SignInRepository.loginUser(
        mobile: mobileNumber,
        password: passwordController.text,
      ).then(
        (response) {
          response.when(
            success: (user) async {
              await Storage.instance.storage
                  .write(key: 'token', value: user.token);
              await Storage.instance.storage
                  .write(key: 'refreshToken', value: user.refreshToken);
              emit(SignInSuccess(user));
            },
            failure: (error) {
              emit(SignInFailure(error: error));
            },
          );
        },
      );
    }
  }
}
