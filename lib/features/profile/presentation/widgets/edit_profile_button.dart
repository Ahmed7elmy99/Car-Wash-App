import 'package:car_wash_mobile_app/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/screens/edit_profile_screen.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

/// A button that allows the user to edit their profile.
///
/// When tapped, the [EditProfileScreen] is pushed onto the navigator.
///
/// The button is a [GestureDetector] that wraps a [SizedBox] with a width
/// and height of 24 logical pixels. The child of the [SizedBox] is the
/// [Assets.images.editIconSvg] SVG icon.
///
/// The button is padded by 17 logical pixels on the trailing edge.
class EditProfileButton extends StatelessWidget {
  const EditProfileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 17.w),
      child: GestureDetector(
        onTap: () {
          context.push(
            EditProfileScreen.id,
            extra: {
              'profileModel': ProfileCubit.get(context).profileModel,
            },
          );
        },
        child: SizedBox(
          width: 24.w,
          height: 24.h,
          child: Assets.images.editIconSvg.svg(), // SVG icon for editing
        ),
      ),
    );
  }
}
