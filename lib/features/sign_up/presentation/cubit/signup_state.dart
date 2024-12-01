part of 'signup_cubit.dart';

// start: created by helmy
//creat At Date (23/10/2024)
@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = signUpInitialState;

  const factory SignupState.loading() = signUpLoadingState;

  const factory SignupState.success() = signUpSuccessState;

  const factory SignupState.error({required ApiErrorHandler error}) =
      signUpErrorState;
}
