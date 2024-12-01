part of 'profile_cubit.dart';

@freezed
class ProfileState<T> with _$ProfileState<T> {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = ProfileLoading;
  const factory ProfileState.success(T user) = ProfileSuccess<T>;
  const factory ProfileState.failure(ApiErrorHandler error) = ProfileFailure;
}
