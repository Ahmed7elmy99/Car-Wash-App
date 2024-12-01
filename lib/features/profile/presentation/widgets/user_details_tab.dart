import 'package:car_wash_mobile_app/core/models/getProfile/get_profile_model.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/cubits/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/user_details_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// [UserDetailsTab] is a widget that displays a list of user details (name - location - email - phone - password). and there is a button to edit some fields
class UserDetailsTab extends StatefulWidget {
  const UserDetailsTab({super.key});

  @override
  State<UserDetailsTab> createState() => _UserDetailsTabState();
}

class _UserDetailsTabState extends State<UserDetailsTab> {
  //this will have the editing status of each detail if it is beign edited or not
  late GetProfileModel? profileModel;

  late EditProfileCubit editProfileCubit;
  @override
  void initState() {
    profileModel = ProfileCubit.get(context).profileModel;
    editProfileCubit = EditProfileCubit.get(context)
      ..initializeControllers(profileModel!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 23.h),
      child: BlocBuilder<EditProfileCubit, EditProfileState>(
        builder: (context, state) {
          if (state is EditProfileSuccess<GetProfileModel>) {
            return UserDetailsList(profileModel: state.user);
          }
          return UserDetailsList(profileModel: profileModel!);
        },
      ),
    );
  }
}
