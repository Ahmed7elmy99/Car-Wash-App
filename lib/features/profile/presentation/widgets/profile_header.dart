import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_wash_mobile_app/core/models/getProfile/get_profile_model.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/custom_curve_clipper.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/edit_profile_button.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/settings_button.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*
edited by : Mohamed Waleed
edited at : 14/10/2024
edits :
- Removed edit_icon.png from assets because it overrides edit_icon.svg when running the command:
dart run build_runner build -d
 */

/// [ProfileHeader] is a widget that contains the profile header,
/// including a back button, edit and settings icons, and a profile photo.
class ProfileHeader extends StatefulWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  late ProfileCubit profileCubit;
  late GetProfileModel? profileModel;
  @override
  void initState() {
    super.initState();
    profileCubit = profileCubit = ProfileCubit.get(context);

    profileModel = profileCubit.profileModel;
  }

  @override

  /// This method builds the header widget containing:
  /// - A background with a wavy curve at the bottom
  /// - A profile photo centered at the bottom
  /// - Icons for edit and settings in the top right corner
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppScreenUtils.w, // Full width of the screen
      height: 260.h, // Height of the header
      child: Stack(
        children: [
          // Background with a custom wavy curve clipper
          ClipPath(
            clipper: CustomCurveClipper(),
            child: Container(
              height: 170.h, // Height of the curved background
              width: AppScreenUtils.w,
              color: ColorName.mintGreen, // Background color
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 28.h), // Padding from the top
            child: const Align(
              alignment:
                  Alignment.topCenter, // Aligns children to the top center
              child: Row(
                children: [
                  //commented to remove back button by omnia [24/11/2024]
                  // CustomBackButton(iconColor: Colors.white),
                  // Adds space between back button and icons// Back button
                  Spacer(),
                  EditProfileButton(),
                  // Settings icon
                  /**
                   * edited by: Naira Ali [20/10/2024]
                   * edit: wrapped the sized box with IconButton to make it clickable and add navigation line
                   */
                  SettingsButton(),
                ],
              ),
            ),
          ),
          // Profile photo
          Align(
            alignment:
                Alignment.bottomCenter, // Aligns the photo to the bottom center
            child: Container(
              width: 143.w, // Width of the profile photo container
              height: 143.h, // Height of the profile photo container
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Circular shape
                border: Border.all(
                  color:
                      ColorName.mintGreen, // Border color matching background
                ),
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    profileModel!.profileImage,
                  ), // Profile image
                  fit: BoxFit.cover, // Cover the entire circular area
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
