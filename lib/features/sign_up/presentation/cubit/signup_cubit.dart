import 'dart:io';

import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';

import 'package:car_wash_mobile_app/features/sign_up/logic/repo/sign_up_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

// start: created by helmy
//creat At Date (26/10/2024)
//created : sign up cubit for handling state management
class SignupCubit extends Cubit<SignupState> {
  static SignupCubit get(context) => BlocProvider.of(context);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  //added: by helmy at date (11/11/2024)
  bool isTermsAccepted = false;
  File? imageFile;
//end at date (11/11/2024)
  String countryCode = "";
  // late File image;
  SignupCubit() : super(const SignupState.initial());

  void signUp(BuildContext context) {
    String mobileNumber = (countryCode + mobileController.text).substring(1);
    if (formstate.currentState!.validate()) {
      if (passwordController.text != confirmPasswordController.text) {
        _showSnackBar(context, "Error!!".tr,
            "Check that password and confirmed password are the same.".tr);
        return;
      }
      if (imageFile == null) {
        _showSnackBar(
            context, "Error!!".tr, "Please select a profile image.".tr);
        return;
      }
      if (isTermsAccepted == false) {
        _showSnackBar(context, "Error!!".tr,
            "You must accept the terms and conditions".tr);
        return;
      }
      emit(const signUpLoadingState());
      SignUpRepository.signUpUser(
        mobile: mobileNumber,
        password: passwordController.text,
        email: emailController.text,
        confirmPassword: confirmPasswordController.text,
        name: nameController.text,
        image: imageFile!,
      ).then((response) {
        response.when(
          success: (user) {
            emit(const signUpSuccessState());
          },
          failure: (error) {
            emit(signUpErrorState(error: error));
          },
        );
      });
    }
  }

  void _showSnackBar(BuildContext context, String title, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$title: $message'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  // Dispose method to clean up controllers when the cubit is closed
  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    mobileController.dispose();
    return super.close();
  }
}
