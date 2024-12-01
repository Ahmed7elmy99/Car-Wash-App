/*
created by : Mohamed Waleed, Ahmed Helmy
created at : 19/10/2024
it is used to show the profile image and add icon
 */
import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_wash_mobile_app/core/widgets/profile_image_shimmer.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/cubits/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A custom widget to display a profile image with an add icon overlay.
///
/// This widget is designed to be used in the profile section of the app.
/// It displays a placeholder image with an add icon on the bottom right corner.
///
/// The placeholder image is replaced with the user's actual profile image when available.
///
/// The add icon is used to trigger the image upload functionality.

class CustomImageProfile extends StatelessWidget {
  const CustomImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    EditProfileCubit cubit = BlocProvider.of<EditProfileCubit>(context);

    return BlocBuilder<EditProfileCubit, EditProfileState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            cubit.updateProfileImage();
          },
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              (state is ProfileImagePickedLoading)
                  ? const ProfileImageShimmer()
                  : (state is ProfileImagePickedSuccess)
                      ? Container(
                          height: 120.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              // Display the picked image
                              image: FileImage(state.imageFile),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : Container(
                          height: 120.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(
                                cubit.profile.profileImage,
                              ),
                            ),
                          ),
                        ),
              Positioned(
                // Adjusted position of the add icon
                bottom: 6.h,
                right: 9.w,
                child: SizedBox(
                  width: 28.w,
                  height: 28.h,
                  child: CircleAvatar(
                    radius: 16.r,
                    backgroundColor: const Color(0xFF84BB93),
                    // Changed icon to default size
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
