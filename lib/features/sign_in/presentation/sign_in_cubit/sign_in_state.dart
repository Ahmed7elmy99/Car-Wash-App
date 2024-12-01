part of 'sign_in_cubit.dart';

@freezed
class SignInState<T> with _$SignInState<T> {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.loading() = SignInLoading;
  const factory SignInState.success(T user) = SignInSuccess<T>;
  const factory SignInState.failure({required ApiErrorHandler error}) =
      SignInFailure;
}
