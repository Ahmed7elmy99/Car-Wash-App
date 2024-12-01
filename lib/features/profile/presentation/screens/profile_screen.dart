/*
created by : Mohamed Waleed
created at : 12/10/2024
it represents ProfileScreen is used to showthat displays the user's profile and the content like his details (name , image , location), and contain tabs for packages and reservations , details.
 */
import 'package:car_wash_mobile_app/features/profile/presentation/cubits/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/cubits/packages_cubit/packages_cubit.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/profile_screen_body.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/cubits/packages_cubit/packages_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The [ProfileScreen] is a widget that displays the user's profile and the content like his details (name , image , location), and contain tabs for packages and reservations , details.
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static const String id = "/Profile";
  @override

  ///
  /// The widget that is built when the [ProfileScreen] is instantiated.
  ///
  /// Returns a [SafeArea] widget that contains a [Scaffold] with a
  /// [ProfileScreenBody] as its body. The [SafeArea] is used to
  /// ensure that the screen is not occluded by the notch or home
  /// indicator on devices that have them.
  ///
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => ProfileCubit()..getProfileData(),
            ),
            BlocProvider(
              create: (context) => EditProfileCubit(),
            ),
            BlocProvider(
              create: (context) => PackagesCubit(),
            ),
          ],
          child: const ProfileScreenBody(),
        ),
      ),
    );
  }
}
