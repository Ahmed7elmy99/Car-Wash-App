import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/otp/logic/repo/otp_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_cubit.freezed.dart';
part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  static OtpCubit get(context) => BlocProvider.of(context);
  String countryCode = "";
  final TextEditingController mobileController = TextEditingController();
  List<TextEditingController> otpFields = [];
  String mobileNumber = '';
  OtpCubit() : super(const OtpState.initial());

  void resendVerficationCode() {
    emit(const ResendCodeLoading());
    OtpRepoistory.resendVerficationCode(mobileNumber: mobileNumber).then(
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

  void confirmMobileNumber() {
    if (mobileController.text.startsWith("0") && countryCode.endsWith("0")) {
      mobileNumber =
          countryCode.substring(1) + mobileController.text.substring(1);
    } else {
      mobileNumber = countryCode.substring(1) + mobileController.text;
    }
  }

  void verifyUser() {
    String otpCode = '';
    for (var field in otpFields) {
      otpCode += field.text;
    }
    if (otpCode.length == 4) {
      emit(const OtpLoading());
      OtpRepoistory.sendOtp(mobileNumber: "201068335370", otpCode: otpCode)
          .then(
        (value) {
          value.when(
            success: (data) {
              emit(const OtpSuccess());
            },
            failure: (error) {
              emit(OtpFailure(error: error));
            },
          );
        },
      );
    }
  }
}
