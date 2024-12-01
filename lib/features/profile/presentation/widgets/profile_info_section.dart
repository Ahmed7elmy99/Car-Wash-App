/*
created by : Mohamed Waleed
created at : 12/10/2024
This widget represents the ProfileInfoSection, which is used to show the user's profile and details (name, image, location).

change the size of location Icon
*/
import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/getProfile/get_profile_model.dart';
import 'package:car_wash_mobile_app/core/utils/helpers.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/profile_header.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/user_location.dart';
import 'package:car_wash_mobile_app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class ProfileInfoSection extends StatelessWidget {
  /// [ProfileInfoSection] is a widget that contains the [ProfileHeader] and user details like name and location.
  const ProfileInfoSection({
    super.key,
  });

  @override

  /// This method builds the widget tree containing the [ProfileHeader] and user details.
  ///
  /// The [ProfileHeader] displays the user's profile photo and additional details,
  /// while the user's name and location are displayed using [Text] widgets with specified styles.
  Widget build(BuildContext context) {
    GetProfileModel profileModel = ProfileCubit.get(context).profileModel!;
    return Column(
      children: [
        const ProfileHeader(), // Displays the profile header with photo and icons
        // User name
        Center(
          child: Text(
            profileModel.name,
            style: Helpers.isArabic(profileModel.name)
                // Style for the user's name and check if the name is arabic to use almarai font family
                ? AppTextStyles.kMutedBlue18FontW700
                    .copyWith(fontFamily: FontFamily.almarai)
                : AppTextStyles.kMutedBlue18FontW700,
          ),
        ),
        // make check if the user location is not null and if so then display the user location
        if (profileModel.location != null)
          UserLocation(location: profileModel.location),
      ],
    );
  }
}
