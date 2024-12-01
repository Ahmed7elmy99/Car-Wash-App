/*
 * Created by: Mohamed Waleed
 * Created at: 19/10/2024
 *
 * The `EditProfileScreen` widget allows users to view and edit their profile information,
 * including their full name, email, and phone number. It displays a profile photo and provides
 * fields for user input, along with a save button at the bottom of the screen.
 * 
 * The screen layout consists of:
 * - A custom header with a background curve and a back button.
 * - Input fields for full name, email, and phone number, each with accompanying icons.
 * - A save button fixed at the bottom of the screen.
 * 
 * The widget utilizes:
 * - Flutter's `Stack` widget to layer the components and position the save button at the bottom.
 * - GetX for internationalization, allowing for the translation of text strings.
 * 
 * Example usage:
 * ```
 * Widget build(BuildContext context) {
 *   return const EditProfileScreen();
 * }
 * ```
 */
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/edit_profile_screen_body.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});
  static String id = "/edit_profile";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: true,
      body: EditProfileScreenBody(),
    );
  }
}
