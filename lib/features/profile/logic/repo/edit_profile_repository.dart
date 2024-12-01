import 'dart:io';

import 'package:car_wash_mobile_app/core/models/getProfile/get_profile_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/profile/data/api_service/edit_profile_service.dart';

class EditProfileRepository {
  /// Checks for changes and updates the profile with only the modified fields.
  static Future<ApiResult<GetProfileModel>> updateProfile({
    required GetProfileModel currentProfile,
    String? newName,
    String? newEmail,
    String? newMobile,
    String? newPassword,
    File? newImageFile,
  }) async {
    // Create a map of only the changed fields
    String? name =
        (newName != null && newName != currentProfile.name) ? newName : null;
    String? email = (newEmail != null && newEmail != currentProfile.email)
        ? newEmail
        : null;
    String? mobile = (newMobile != null && newMobile != currentProfile.mobile)
        ? newMobile
        : null;
    String? password =
        (newPassword != null && newPassword.isNotEmpty) ? newPassword : null;

    File? image = newImageFile ??
        File.fromUri(Uri.parse('${currentProfile.profileImage}'));
    // Call the service with only modified fields
    return EditProfileService.updateProfile(
      name: name,
      email: email,
      mobile: mobile,
      password: password,
      imageFile: image,
    );
  }
}
