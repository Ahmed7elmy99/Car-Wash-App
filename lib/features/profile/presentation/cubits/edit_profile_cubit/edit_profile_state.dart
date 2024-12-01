part of 'edit_profile_cubit.dart';

@freezed
class EditProfileState<T> with _$EditProfileState<T> {
  const factory EditProfileState.initial() = _Initial;
  const factory EditProfileState.loading() = EditProfileLoading;
  const factory EditProfileState.imagePickedSuccess(File imageFile) =
      ProfileImagePickedSuccess;
  const factory EditProfileState.imagePickedLoading() =
      ProfileImagePickedLoading;
 

  const factory EditProfileState.success(T user) = EditProfileSuccess<T>;
  const factory EditProfileState.failure(ApiErrorHandler error) =
      EditProfileFailure;

  const factory EditProfileState.changeStatus(bool hasChanges) =
      EditProfileChangeStatus;
}
