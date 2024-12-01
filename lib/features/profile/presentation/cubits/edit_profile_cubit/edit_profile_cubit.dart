import 'dart:io';

import 'package:car_wash_mobile_app/core/models/getProfile/get_profile_model.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/profile/logic/repo/edit_profile_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'edit_profile_cubit.freezed.dart';
part 'edit_profile_state.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  static EditProfileCubit get(context) => BlocProvider.of(context);
  late GetProfileModel profile;

  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  File? pickedFile;
  bool hasChanges = false;

  EditProfileCubit() : super(const EditProfileState.initial());

  Future<void> updateProfileImage() async {
    final ImagePicker picker = ImagePicker();
    XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery);
    // Open gallery
    if (pickedImage != null) {
      pickedFile = File(pickedImage.path);
      emit(const EditProfileState.loading());
      emit(EditProfileState.imagePickedSuccess(pickedFile!));
    }
  }

  /// Initializes the [TextEditingController]s with the given [profileModel].
  /// Sets the [profile] field to the given [profileModel].
  void initializeControllers(GetProfileModel profileModel) {
    profile = profileModel;
    mobileController.text = saudiNumber(profile.mobile);
    nameController.text = profileModel.name ?? '';
    emailController.text = profileModel.email ?? '';
    passwordController.text = '';
  }

  String saudiNumber(String mobileNumber) {
    if (mobileNumber.startsWith('966')) {
      return mobileNumber.replaceFirst('966', '05');
    }
    return mobileNumber;
  }

  /// Checks if there are any changes in the profile data compared to the
  /// original profile data and updates the [hasChanges] variable accordingly.
  /// Emits a new state to update the UI.
  void checkForChanges() {
    hasChanges = (nameController.text.isNotEmpty &&
            nameController.text != profile.name) ||
        (emailController.text.isNotEmpty &&
            emailController.text != (profile.email ?? '')) ||
        passwordController.text.isNotEmpty;
    emit(const EditProfileState.initial());
    // emit new state to update UI
    emit(EditProfileState.changeStatus(hasChanges));
  }

  /// Updates the profile with the provided details.
  ///
  /// Emits [EditProfileLoading] initially and then either
  /// [EditProfileSuccess] with the updated [GetProfileModel] on success or
  /// [EditProfileFailure] with the error message on failure.
  Future<void> updateProfileDetails() async {
    emit(const EditProfileLoading());

    final result = await EditProfileRepository.updateProfile(
      currentProfile: profile,
      newName: nameController.text,
      newEmail: emailController.text,
      newPassword: passwordController.text,
      newImageFile: pickedFile,
    );

    result.when(
      success: (user) {
        profile = user; // Update profile on success
        emit(EditProfileSuccess<GetProfileModel>(user));
      },
      failure: (error) {
        emit(EditProfileFailure(error));
      },
    );
  }
}
