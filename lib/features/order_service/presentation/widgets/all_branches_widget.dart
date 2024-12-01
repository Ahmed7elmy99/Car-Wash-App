// Created by: Nadeen Mohamed
// Created at date: 10/11/2024
// Create All Branches widget to show all Branches
import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/features/order_service/data/model/Branch_model/branch_model.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/booking_cubit/booking_cubit.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/get_all_branches_cubit/get_all_branches_cubit.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class AllBranchesWidget extends StatefulWidget {
  const AllBranchesWidget({super.key});

  @override
  State<AllBranchesWidget> createState() => _AllBranchesWidgetState();
}

class _AllBranchesWidgetState extends State<AllBranchesWidget> {
  String? selectedBranch;
  bool isExpanded = false;
  bool selectedBranchHintColor = false;

  @override
  void initState() {
    super.initState();
    // Fetch branches initially
    context.read<GetAllBranchesCubit>().getAllBranches();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetAllBranchesCubit, GetAllBranchesState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            TextFormField(
              validator: (value) {
                if (selectedBranch == null) {
                  return "select_branch".tr;
                }
                return null;
              },
              readOnly: true,
              onTap: () async {
                setState(() {
                  isExpanded = !isExpanded;
                });
                if (isExpanded) {
                  context.read<GetAllBranchesCubit>().getAllBranches();
                }
              },
              decoration: InputDecoration(
                hintText: selectedBranch ?? "select_branch_only".tr,
                hintStyle: selectedBranchHintColor
                    ? AppTextStyles.kBlack12FontW700
                    : AppTextStyles.kGery11WithOpacity50FontW400,
                suffixIcon: Padding(
                  padding: EdgeInsets.only(
                    left: AppScreenUtils.isTablet ? 10.0 : 13.0,
                  ),
                  child: isExpanded
                      ? Icon(
                          Icons.keyboard_arrow_up_rounded,
                          size: AppScreenUtils.isTablet ? 31.0 : 35.0,
                        )
                      : Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: AppScreenUtils.isTablet ? 31.0 : 35.0,
                        ),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 17.0.h, horizontal: 12.0.w),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: BorderSide(
                    color: ColorName.grey.withOpacity(0.1),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: BorderSide(
                    color: ColorName.grey.withOpacity(0.1),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: BorderSide(
                    color: ColorName.grey.withOpacity(0.1),
                  ),
                ),
              ),
            ),
            if (isExpanded)
              const Divider(
                color: ColorName.green,
                thickness: 1.5,
                height: 0,
              ),
            if (isExpanded)
              state is GetAllBranchesLoading
                  ? Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        padding: EdgeInsets.only(top: 11.0.h, right: 17.0.w),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorName.grey.withOpacity(0.1),
                          ),
                        ),
                        child: Column(
                          children: List.generate(
                            2,
                            (index) => Padding(
                              padding: EdgeInsets.only(bottom: 14.0.h),
                              child: Row(
                                children: [
                                  Container(
                                    width: 100.0,
                                    height: 15.0,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : state is GetAllBranchesFailure
                      ? Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("failed_to_load_branches".tr),
                        )
                      : state is GetAllBranchesSuccess<List<BranchModel>>
                          ? Container(
                              padding:
                                  EdgeInsets.only(top: 11.0.h, right: 17.0.w),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorName.grey.withOpacity(0.1),
                                ),
                              ),
                              child: state.branches.isEmpty
                                  ? Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional.only(
                                                end: 30.w, start: 30.w),
                                            child: Text(
                                              "no_branches_found".tr,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                        ],
                                      ),
                                    )
                                  : Column(
                                      children: state.branches.map((branch) {
                                        return InkWell(
                                          onTap: () {
                                            setState(() {
                                              selectedBranch = branch.name;
                                              isExpanded = false;
                                            });
                                            // Update BookingCubit with the selected branch
                                            context
                                                .read<BookingCubit>()
                                                .updateSelectedBranch(branch);
                                          },
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 14.0.h),
                                            child: Row(
                                              children: [
                                                Text(
                                                  branch.name,
                                                  style: selectedBranch ==
                                                          branch.name
                                                      ? AppTextStyles
                                                          .kBlack12FontW700
                                                      : AppTextStyles
                                                          .kBlack12FontW700,
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                            )
                          : const SizedBox.shrink(),
          ],
        );
      },
    );
  }
}
