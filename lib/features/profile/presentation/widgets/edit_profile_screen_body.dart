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

import 'package:car_wash_mobile_app/core/utils/app_snack_bar.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/cubits/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/custom_curve_clipper.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/custom_image_profile.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/edit_profile_form.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EditProfileScreenBody extends StatefulWidget {
  const EditProfileScreenBody({
    super.key,
  });

  @override
  State<EditProfileScreenBody> createState() => _EditProfileScreenBodyState();
}

class _EditProfileScreenBodyState extends State<EditProfileScreenBody> {
  late EditProfileCubit cubit;
  GlobalKey<FormState> key = GlobalKey();
  @override
  void initState() {
    super.initState();
    cubit = EditProfileCubit.get(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
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
                          padding: EdgeInsets.only(
                              top: 28.h), // Padding from the top
                          child: const Align(
                            alignment: Alignment
                                .topCenter, // Aligns children to the top center
                            child: Row(
                              children: [
                                // Back button
                                CustomBackButton(iconColor: Colors.white),
                              ],
                            ),
                          ),
                        ),
                        // Profile photo
                        const Align(
                          alignment: Alignment
                              .bottomCenter, // Aligns the photo to the bottom center
                          child: CustomImageProfile(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 26.h),
                  EditProfileForm(formKey: key),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
              vertical: 20.h,
              horizontal: 15.w,
            ),
            child: BlocConsumer<EditProfileCubit, EditProfileState>(
              listener: (context, state) {
                if (state is EditProfileFailure) {
                  state.error.showError(context);
                }
                if (state is EditProfileSuccess) {
                  AppSnackBar.showSnackBar(
                    context,
                    'profile_details_updated_successfully'.tr,
                  );
                }
              },
              builder: (context, state) {
                return CustomButton(
                  boarderRadius: 10.r,
                  width: 374.w,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Assets.images.rightArrow.svg(
                            width: 12.w,
                            height: 16.h,
                          ),
                        ),
                        Text(
                          'save'.tr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    if (key.currentState!.validate()) {
                      cubit.updateProfileDetails();
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
