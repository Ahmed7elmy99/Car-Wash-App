import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/forget_password/logic/repository/forget_password_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password_cubit.freezed.dart';
part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  static ForgetPasswordCubit get(context) => BlocProvider.of(context);

  TextEditingController phoneController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController newPasswordConfirmationController =
      TextEditingController();

  List<TextEditingController> fieldsControllers = [];
  String countryCode = '+966';
  late String phoneNumber;

  ForgetPasswordCubit() : super(const ForgetPasswordState.initial());

  void resendVerficationCode() {
    emit(const ResendCodeLoading());
    ForgetPasswordRepository.resendVerficationCode(mobileNumber: phoneNumber)
        .then(
      (value) {
        value.when(
          success: (data) {
            emit(const ResendCodeSuccess());
          },
          failure: (error) {
            emit(ResendCodeFailure(error));
          },
        );
      },
    );
  }

  /// Prepares the phone number for the forget password process by removing the
  /// "0" prefix if it exists in both the country code and the phone number.
  void confirmMobileNumber() {
    if (phoneController.text.startsWith("0") && countryCode.endsWith("0")) {
      phoneNumber =
          countryCode.substring(1) + phoneController.text.substring(1);
    } else {
      phoneNumber = countryCode.substring(1) + phoneController.text;
    }
  }

  /// Initiates the forget password process.
  ///
  /// This function emits [ForgetPasswordState.loading] while the request is being processed,
  /// and then emits either [ForgetPasswordState.success] or [ForgetPasswordState.failure]
  /// depending on the result of the forget password request.
  /// The request uses the phone number obtained from combining [countryCode] and the
  /// text from [phoneController].
  void forgetPassword() {
    emit(const ForgetPasswordState.loading());

    ForgetPasswordRepository.forgetPassword(phoneNumber: phoneNumber).then(
      (value) {
        value.when(
          success: (data) {
            emit(const ForgetPasswordState.success());
          },
          failure: (error) {
            emit(ForgetPasswordState.failure(error));
          },
        );
      },
    );
  }

  /// Resets the user's password.
  ///
  /// This function emits [ForgetPasswordState.resetPasswrodloading] before
  /// attempting to reset the password, and then emits either
  /// [ForgetPasswordState.resetPasswrodsuccess] or
  /// [ForgetPasswordState.resetPasswrodfailure] depending on the result of
  /// the reset password request.
  void resetPassword() {
    String resetPasswordCode = '';
    for (var field in fieldsControllers) {
      resetPasswordCode += field.text;
    }
    emit(const ForgetPasswordState.resetPasswrodloading());
    ForgetPasswordRepository.resetPassword(
      code: resetPasswordCode,
      newPassword: newPasswordController.text,
      phoneNumber: phoneNumber,
    ).then(
      (value) {
        value.when(
          success: (data) {
            emit(const ForgetPasswordState.resetPasswrodsuccess());
          },
          failure: (error) {
            emit(ForgetPasswordState.resetPasswrodfailure(error));
          },
        );
      },
    );
  }
}
