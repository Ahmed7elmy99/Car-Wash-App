/*
  edited by : Mohamed Waleed
  edited at : 19/10/2024
  edits :
  - fix the oval shape that appears instead of circle
 */

import 'package:car_wash_mobile_app/core/models/getProfile/get_profile_model.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class UserProfileImage extends StatefulWidget {
  const UserProfileImage({super.key});

  @override
  State<UserProfileImage> createState() => _UserProfileImageState();
}

class _UserProfileImageState extends State<UserProfileImage> {
  late ProfileCubit profileCubit;

  @override
  void initState() {
    profileCubit = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        print('Current state: $state'); // Log the current state
        if (state is ProfileLoading) {
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::state is Profile Loading");
        } else if (state is ProfileSuccess<List<GetProfileModel>>) {
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::state is Profile Success");
        } else if (state is ProfileFailure) {
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::state is Profile Error");
          state.error.showError(context);
        }
      },
      builder: (context, state) {
        return state is ProfileSuccess
            ? GestureDetector(
                onTap: () {
                  context.push(ProfileScreen.id);
                },
                child: Material(
                    elevation: 8,
                    // Adjust elevation for shadow depth
                    shape: const CircleBorder(),
                    // Ensure the shadow follows a circular shape
                    shadowColor: Colors.grey.withOpacity(0.5),
                    child: CircleAvatar(
                      radius: 16.r, // Adjust size
                      backgroundImage:
                          NetworkImage(state.user.profileImage.toString()),
                      onBackgroundImageError: (error, stackTrace) {
                        print('Failed to load profile image: $error');
                      },
                    )),
              )
            : Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: GestureDetector(
                    onTap: () {
                      context.push(ProfileScreen.id);
                    },
                    child: CircleAvatar(
                      radius: 16.r, // Adjust size
                    )),
              );
      },
    );
  }
}
