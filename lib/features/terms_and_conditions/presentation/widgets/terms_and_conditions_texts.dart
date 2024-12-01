import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/features/terms_and_conditions/presentation/cubit/terms_and_conditions_cubit.dart';
import 'package:car_wash_mobile_app/features/terms_and_conditions/presentation/widgets/remove_html_tags.dart';

import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

// start: created by helmy
//Edit At Date (6/11/2024)
//replace loading indicator with shimmer effect when TermsAndConditionLoadingState
// using bloc consumer to handle state management on TermsAndConditionsTexts from api
class TermsAndConditionsTexts extends StatelessWidget {
  const TermsAndConditionsTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TermsAndConditionsCubit, TermsAndConditionsState>(
      listener: (context, state) {
        if (state is TermsAndConditionErrorState) {
          state.error.showError(context);
        }
      },
      builder: (context, state) {
        final cubit = TermsAndConditionsCubit.get(context);

        if (cubit.termsModel != null) {
          return _buildConditionItem(
            processHtmlText(cubit.termsModel!.text),
          );
        } else if (state is TermsAndConditionLoadingState) {
          return _buildShimmerEffect();
        } else {
          return const Center(child: Text("Terms and conditions not available"));
        }
      },
    );
  }

  Widget _buildShimmerEffect() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(5, (index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 12.w,
                  height: 3.h,
                  color: Colors.white,
                ),
                SizedBox(width: 5.w),
                Expanded(
                  child: Container(
                    height: 16.h,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

Widget _buildConditionItem(String text) {
  List<String> sentences = text.split(RegExp(r'(?<=[.!؟])\s*(?=<br>|&nbsp;|$)|(?<=")\s*'));
  sentences = sentences.map((s) => s.trim()).where((s) => s.isNotEmpty).toList();

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: sentences.map((sentence) {
      return Padding(
        padding: EdgeInsets.only(bottom: 16.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Container(
                width: 12.w,
                height: 3.h,
                color: ColorName.green,
              ),
            ),
            SizedBox(width: 5.w),
            Expanded(
              child: Text(
                sentence,
                style: AppTextStyles.kBlack12FontW400,
              ),
            ),
          ],
        ),
      );
    }).toList(),
  );
}