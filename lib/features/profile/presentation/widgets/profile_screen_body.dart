/*
created by : Mohamed Waleed
created at : 12/10/2024
This widget represents the ProfileScreenBody, which is used to show the user's profile and details (name, image, location),
and contains tabs for packages and reservations.

edited by : Mohamed Waleed 
edited at : 19/10/2024
edits :
use NestedScrollView instead of CustomScrollView because we don't want to make a scrollable view in the body just scroll the whole screen to provide better user experience  
*/

import 'package:car_wash_mobile_app/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/profile_info_section.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/profile_screen_shimmer.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/profile_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

/// [ProfileScreenBody] is used to show the user's profile details such as name, image, and location,
/// and contains tabs for packages and reservations.
class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({
    super.key,
  });

  @override

  /// This method builds the widget tree that contains a [CustomScrollView] with a [ProfileInfoSection]
  /// and a [ProfileTabs]. The [ProfileInfoSection] displays the user's profile information,
  /// while the [ProfileTabs] provides navigation options for packages and reservations.
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is ProfileFailure) {
          state.error.showError(context);
        }
      },
      builder: (context, state) {
        if (state is ProfileSuccess) {
          return ModalProgressHUD(
            inAsyncCall: state is ProfileLoading,
            child: const CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  // Displays user's profile info (name, image, location)
                  child: ProfileInfoSection(),
                ),
                SliverFillViewport(
                  delegate: SliverChildListDelegate.fixed(
                    [
                      ProfileTabs(),
                    ],
                  ),
                )
              ],
            ),
          );
        } else {
          return const Center(
            child: ProfileScreenShimmer(),
          );
        }
      },
    );
  }
}
