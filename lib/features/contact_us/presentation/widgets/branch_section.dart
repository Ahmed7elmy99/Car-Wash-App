import 'package:car_wash_mobile_app/features/contact_us/presentation/cubit/branches_cubit/branches_cubit.dart';
import 'package:car_wash_mobile_app/features/contact_us/presentation/widgets/branch_container.dart';
import 'package:car_wash_mobile_app/features/contact_us/presentation/widgets/branches_shimmer.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BranchSection extends StatefulWidget {
  const BranchSection({super.key});

  @override
  State<BranchSection> createState() => _BranchSectionState();
}

class _BranchSectionState extends State<BranchSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: 32.w,
        top: 50.h,
      ),
      child: Container(
        width: 216.w,
        height: 75.h,
        decoration: BoxDecoration(
          color: ColorName.white,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            start: 31.w,
            top: 6.h,
            bottom: 13.h,
          ),
          child: BlocConsumer<BranchesCubit, BranchesState>(
            listener: (context, state) {
              print('Current state: $state'); // Log the current state
              if (state is GetBranchesLoading) {
                print(
                    ":::::::::::::::::::::::::::::::::::::::::::::state is Branch Data Loading");
              }
              if (state is GetBranchesLoading) {
                print(
                    ":::::::::::::::::::::::::::::::::::::::::::::state is Branch Data success");
              }
              if (state is GetBranchesError) {
                print(
                    ":::::::::::::::::::::::::::::::::::::::::::::state is Branch Data error");
                print(state.error.statusMessage);
                state.error.showError(context);
              }
            },
            builder: (context, state) {
              return state is GetBranchesSuccess
                  ? BranchContainer(
                      name: state.branch[0].name,
                      address: state.branch[0].address)
                  : const BranchesShimmer();
            },
          ),
        ),
      ),
    );
  }
}
