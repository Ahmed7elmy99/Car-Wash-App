import 'package:car_wash_mobile_app/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class UserSettingInfo extends StatefulWidget {
  const UserSettingInfo({
    super.key,
  });

  @override
  State<UserSettingInfo> createState() => _UserSettingInfoState();
}

class _UserSettingInfoState extends State<UserSettingInfo> {
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
              ":::::::::::::::::::::::::::::::::::::::::::::state is profile Loading");
        } else if (state is ProfileSuccess) {
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::state is profile Success");
        } else if (state is ProfileFailure) {
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::state is profile Error");
          print(state.error.statusMessage);
          state.error.showError(context);
        }
      },
      builder: (context, state) {
        return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24.h, 0, 26.h),
            child: state is ProfileSuccess
                ? Row(
                    children: [
                      Material(
                        elevation: 8, // Adjust elevation for shadow depth
                        shape:
                            const CircleBorder(), // Ensure the shadow follows a circular shape
                        shadowColor: Colors.grey.withOpacity(0.5),
                        child: CircleAvatar(
                          radius: 30.r, // Adjust size
                          backgroundImage:
                              NetworkImage(state.user.profileImage.toString()),
                          // backgroundImage: AssetImage(icon), // Replace with your image path
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.user.name.toString(),
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: ColorName.mutedBlue),
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            state.user.email.toString(),
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: ColorName.darkGreyColor),
                          ),
                        ],
                      ),
                    ],
                  )
                : Row(
                    children: [
                      Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child: CircleAvatar(
                          radius: 30.r, // Adjust size
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Shimmer.fromColors(
                            baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                            child: Container(
                              width: 100.w,
                              height: 10.h,
                              color: Colors.grey.shade300,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Shimmer.fromColors(
                            baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                            child: Container(
                              width: 200.w,
                              height: 10.h,
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ));
      },
    );
  }
}
