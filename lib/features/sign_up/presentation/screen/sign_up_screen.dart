import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/features/sign_up/presentation/cubit/signup_cubit.dart';
import 'package:car_wash_mobile_app/features/sign_up/presentation/widgets/check_box_about_tetms_and_conditions.dart';
import 'package:car_wash_mobile_app/features/sign_up/presentation/widgets/check_have_account.dart';
import 'package:car_wash_mobile_app/features/sign_up/presentation/widgets/create_account_button_sign_up.dart';
import 'package:car_wash_mobile_app/features/sign_up/presentation/widgets/custom_all_text_form_feild_sign_up.dart';
import 'package:car_wash_mobile_app/features/sign_up/presentation/widgets/custom_profile_image_sign_up.dart';
import 'package:car_wash_mobile_app/features/sign_up/presentation/widgets/title_and_head_title_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// start: Edited by helmy
//Edit At Date (23/10/2024)
// added bloc provider to this screen
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  static const String id = "/SignupScreen";
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final bool _confirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SignupCubit(),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              floating: true,
              pinned: false,
              scrolledUnderElevation: 0,
              leading: SizedBox(
                width: 24.w,
                height: 24.h,
                child: const CustomBackButton(),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.only(left: 23.w, right: 23.w),
                    child: Column(
                      children: [
                        // Changed text to be translatable
                        const TitleAndHeadTitleSignUp(),
                        SizedBox(height: 19.h),
                        //edited by helmy
                        //edit at date (23/10/2024)
                        const CustomImageProfileSignUP(),
                        SizedBox(height: 19.h),
                        const CustomAllTextFormFeildSignUp()
                        // Changed label and hint text to be translatable
                      ],
                    ),
                  ),
                  SizedBox(height: 28.h),
                  const CheckBoxAboutTermsAndConditions(),
                  SizedBox(height: 31.h),
                  const CreateAccountButtonSignUp(),
                  SizedBox(height: 20.h),
                  const CheckHaveAccount()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
