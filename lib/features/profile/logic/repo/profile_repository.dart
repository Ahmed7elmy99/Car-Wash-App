import 'package:car_wash_mobile_app/core/models/getProfile/get_profile_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/profile/data/api_service/profile_service.dart';

class ProfileRepository {
  static Future<ApiResult<GetProfileModel>> getProfile() async {
    return ProfileService.getProfileData();
  }
}
