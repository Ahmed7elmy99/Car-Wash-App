/*
created by : Mohamed Waleed 
created at : 12/10/2024
edited by : Mohamed Waleed
edited at : 16/10/2024
edits :
- remove bottom padding from the user details list to solve the conflict with the bottom navigation bar
___________________________________________________________________________________________________________________
edited by : Mohamed Waleed
edited at : 19/10/2024
edits :
- using column and list.generate instead of ListView because we don't need it to be scrollable
 */

import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/getProfile/get_profile_model.dart';
import 'package:car_wash_mobile_app/core/utils/helpers.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_progress_indicator.dart';
import 'package:car_wash_mobile_app/features/profile/data/model/user_details_model.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/cubits/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/edit_button.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/user_detail_tile_icon.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/user_editable_field.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:car_wash_mobile_app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UserDetailsList extends StatefulWidget {
  const UserDetailsList({super.key, required this.profileModel});
  final GetProfileModel profileModel;

  @override
  State<UserDetailsList> createState() => _UserDetailsListState();
}

class _UserDetailsListState extends State<UserDetailsList> {
  late List<UserDetails> userDetailsList;

  late EditProfileCubit editProfileCubit;
  @override
  void initState() {
    editProfileCubit = EditProfileCubit.get(context);
    userDetailsList = _buildUserDetails(widget.profileModel);
    super.initState();
  }

  /// Builds a list of user details with icons and editable status.
  List<UserDetails> _buildUserDetails(GetProfileModel profileModel) {
    return [
      // User's name
      UserDetails(
        icon: Assets.images.personIcon.image(),
        data: profileModel.name,
        controller: editProfileCubit.nameController,
      ),
      // User's email if it is not null
      if (profileModel.email != null)
        UserDetails(
          icon: Assets.images.emailIcon.image(),
          data: profileModel.email, // User's email
          controller: editProfileCubit.emailController,
        ),
      // User's password
      UserDetails(
        icon: Assets.images.lockIcon.image(),
        data: "****************", // Placeholder for user's password
        isPasswordField: true,
        controller: editProfileCubit.passwordController,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileCubit, EditProfileState>(
      listener: (context, state) {
        if (state is EditProfileFailure) {
          state.error.showError(context);
        }
      },
      builder: (context, state) {
        if (state is EditProfileLoading) {
          return const Column(
            children: [
              CustomProgressIndicator(),
            ],
          );
        } else {
          if (state is EditProfileSuccess) {
            userDetailsList = _buildUserDetails(state.user);
          }
          return ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              if (index < userDetailsList.length) {
                UserDetails userDetails = userDetailsList[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 23.w, vertical: 9.h),
                  padding: EdgeInsetsDirectional.only(
                    top: 17.h,
                    bottom: 19.h,
                    start: 14.w,
                  ),
                  decoration: BoxDecoration(
                    color: ColorName
                        .aliceBlue, // Background color for user detail item
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: AnimatedCrossFade(
                    firstChild: Row(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.only(end: 12.w),
                          // Icon representing the detail
                          child: UserDetailTileIcon(
                            icon: userDetails.icon.paddingAll(0),
                          ),
                        ),
                        //added sizedbox to solve overflow error by omnia mohamed [24/11/2024]
                        SizedBox(
                          width: 180.w,
                          child: Expanded(
                            child: Text(
                              userDetails.data!,
                              //check if the user data is arabic then use almarai fontfamily
                              style: Helpers.isArabic(userDetails.data!)
                                  ? AppTextStyles.kBlack12FontW700
                                      .copyWith(fontFamily: FontFamily.almarai)
                                  : AppTextStyles.kBlack12FontW700,
                            ),
                          ),
                        ),
                        const Spacer(),
                        EditButton(
                          onTap: () {
                            // it will toggle editing status of the field
                            setState(() {
                              userDetails.isBeingEdited =
                                  !userDetails.isBeingEdited;
                            });
                          },
                        )
                      ],
                    ),
                    secondChild: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 12.w),
                            // Icon representing the detail
                            child: UserDetailTileIcon(
                              icon: userDetails.icon.paddingAll(0),
                            ),
                          ),
                          Expanded(
                            child: EditableUserDetailField(
                              controller: userDetails.controller,
                              isPasswordField: userDetails.isPasswordField,
                              onSubmitted: (value) {
                                // Update data and stop editing
                                if (value.isNotEmpty) {
                                  setState(() {
                                    userDetails.isBeingEdited = false;
                                    if (!userDetails.isPasswordField) {
                                      userDetailsList[index] =
                                          userDetails.copyWith(data: value);
                                    }

                                    editProfileCubit.checkForChanges();
                                  });
                                }
                              },
                              style: Helpers.isArabic(userDetails.data!)
                                  ? AppTextStyles.kBlack12FontW700
                                      .copyWith(fontFamily: FontFamily.almarai)
                                  : AppTextStyles.kBlack12FontW700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    crossFadeState: userDetails.isBeingEdited
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst,
                    duration: const Duration(milliseconds: 500),
                  ),
                );
              } else {
                return BlocBuilder<EditProfileCubit, EditProfileState>(
                  builder: (context, state) {
                    if (state is EditProfileChangeStatus && state.hasChanges) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14.w),
                        child: CustomButton(
                          boarderRadius: 10.r,
                          width: 374.w,
                          onTap: () {
                            editProfileCubit.updateProfileDetails();
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 14.h),
                            child: state is EditProfileLoading
                                ? Center(
                                    child: SizedBox(
                                      height: 22.h,
                                      width: 22.h,
                                      child: const CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Assets.images.rightArrow.svg(
                                          width: 12.w,
                                          height: 16.h,
                                        ),
                                      ),
                                      Text(
                                        'confirm'.tr,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                          ),
                        ),
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                );
              }
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 18.h);
            },
            itemCount: userDetailsList.length + 1,
          );
        }
      },
    );
  }
}
