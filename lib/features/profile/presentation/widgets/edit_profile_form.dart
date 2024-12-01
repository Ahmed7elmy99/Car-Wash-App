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

import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/utils/validator_utils.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_textfield.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/cubits/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EditProfileForm extends StatefulWidget {
  const EditProfileForm({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;
  @override
  State<EditProfileForm> createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<EditProfileForm> {
  late EditProfileCubit cubit;
  @override
  void initState() {
    cubit = EditProfileCubit.get(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            CustomTextFormField(
              validator: (value) {
                if (Validators.nameValidator(value) != null) {
                  return Validators.nameValidator(value);
                }
                return null;
              },
              textEditingController: cubit.nameController,
              hintText: "${"full_name".tr}...",
              prefixIcon: Transform.scale(
                scale: AppScreenUtils.isTablet ? 1.2 : 1,
                child: Assets.images.personIcon.image(),
              ),
              prexixIconConstraints: BoxConstraints(
                minWidth: 25.w,
                minHeight: 30.h,
                maxHeight: 30.h,
                maxWidth: 25.w,
              ),
              label: "",
            ),
            SizedBox(height: 18.h),
            CustomTextFormField(
              validator: (value) {
                if (Validators.emailValidator(value) != null) {
                  return Validators.emailValidator(value);
                }
                return null;
              },
              textEditingController: cubit.emailController,
              hintText: "${"email".tr}...",
              prefixIcon: Transform.scale(
                scale: AppScreenUtils.isTablet ? 1.2 : 1,
                child: Assets.images.emailIcon.image(),
              ),
              prexixIconConstraints: BoxConstraints(
                minWidth: 28.w,
                minHeight: 30.h,
                maxHeight: 30.h,
                maxWidth: 28.w,
              ),
              label: "",
            ),
            
            SizedBox(height: 18.h),
            // CustomTextFormField(
            //   validator: (value) {
            //     if (Validators.phoneNumberValidator(value) != null) {
            //       return Validators.phoneNumberValidator(value);
            //     }
            //     return null;
            //   },
            //   textEditingController: cubit.mobileController,
            //   hintText: '',
            //   prefixIcon: Transform.scale(
            //     scale: AppScreenUtils.isTablet ? 0.5 : 0.8,
            //     child: Assets.images.phoneIcon.svg(),
            //   ),
            //   prexixIconConstraints: BoxConstraints(
            //     minWidth: 35.w,
            //     minHeight: 30.h,
            //     maxHeight: 30.h,
            //     maxWidth: 35.w,
            //   ),
            //   label: "",
            //   suffixIconConstraints: BoxConstraints(
            //     maxWidth: 40.w,
            //     minWidth: 40.w,
            //   ),
            //   suffixIcon: Row(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Container(
            //         width: 1.w,
            //         height: 19.h,
            //         decoration: const BoxDecoration(
            //           color: ColorName.gainsboro,
            //         ),
            //       ),
            //       SizedBox(width: 6.w),
            //       Text(
            //         "+966",
            //         style: AppTextStyles.black12FontPoppinsW700,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
