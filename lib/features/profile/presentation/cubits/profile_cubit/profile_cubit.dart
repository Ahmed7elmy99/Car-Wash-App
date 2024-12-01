import 'package:car_wash_mobile_app/core/models/getProfile/get_profile_model.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/core/utils/storage.dart';
import 'package:car_wash_mobile_app/features/profile/logic/repo/profile_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
// make getter for the cubit
  static ProfileCubit get(BuildContext context) =>
      BlocProvider.of<ProfileCubit>(context);

  late GetProfileModel? profileModel;

  ProfileCubit() : super(const ProfileState.initial());

  /// Fetches the profile data from the repository.
  ///
  /// Emits a [ProfileLoading] state initially, then calls the
  /// [ProfileRepository.getProfile] method to retrieve the profile data.
  /// On a successful response, it updates the [profileModel] with the
  /// retrieved data and emits a [ProfileSuccess] state.
  /// If there is an error during the fetch, it emits a [ProfileFailure] state
  /// with the error details.

  void getProfileData() {
    emit(const ProfileLoading());
    ProfileRepository.getProfile().then(
      (value) {
        value.when(
          success: (data) {
            profileModel = data;
            Storage.instance.storage
                .write(key: "userName", value: profileModel!.name.toString());
            Storage.instance.storage
                .write(key: "userEmail", value: profileModel!.email.toString());
            Storage.instance.storage.write(
                key: "userMobileNumber",
                value: profileModel!.mobile.toString());
            Storage.instance.storage
                .write(key: "userId", value: profileModel!.id.toString());
            emit(ProfileSuccess(profileModel));
          },
          failure: (error) {
            emit(ProfileFailure(error));
          },
        );
      },
    );
  }
}
