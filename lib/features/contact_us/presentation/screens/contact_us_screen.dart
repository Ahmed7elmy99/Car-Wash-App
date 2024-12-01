import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/contact_us/presentation/cubit/branches_cubit/branches_cubit.dart';
import 'package:car_wash_mobile_app/features/contact_us/presentation/cubit/contact_us_cubit.dart';
import 'package:car_wash_mobile_app/features/contact_us/presentation/widgets/call_us_map.dart';
import 'package:car_wash_mobile_app/features/contact_us/presentation/widgets/message_details_custom_text_field.dart';
import 'package:car_wash_mobile_app/features/contact_us/presentation/widgets/message_text_field.dart';
import 'package:car_wash_mobile_app/features/contact_us/presentation/widgets/phoe_text_field.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ContactUsScreen extends StatefulWidget {
  static const String id = '/contactUsScreen';

  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // late ContactUsCubit contactUsCubit;

  @override
  void initState() {
    // contactUsCubit = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ContactUsCubit()),
        BlocProvider(create: (context) => BranchesCubit()..getBranchData()),
      ],
      child: BlocConsumer<ContactUsCubit, ContactUsState>(
        listener: (context, state) {
          print('Current state: $state'); // Log the current state
          if (state is ContactUsLoading) {
            print(
                ":::::::::::::::::::::::::::::::::::::::::::::state is contact us Loading");
          }
          if (state is ContactUsSuccess) {
            print(
                ":::::::::::::::::::::::::::::::::::::::::::::state is contact us success");
          }
          if (state is ContactUsError) {
            print(
                ":::::::::::::::::::::::::::::::::::::::::::::state is contact us error");
            print(state.error.statusMessage);
            state.error.showError(context);
          }
        },
        builder: (context, state) {
          return Scaffold(
              body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomBackButton(),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: 28.w,
                      top: 10.h,
                      bottom: 17.h,
                    ),
                    child: Text(
                      "call_us".tr,
                      style: AppTextStyles.kGray15FontW700,
                    ),
                  ),
                  const CallUsMap(),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: 23.w,
                      end: 23.w,
                      top: 28.h,
                      bottom: 8.h,
                    ),
                    child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "send_a_message".tr,
                              style: AppTextStyles.kGray15FontW700,
                            ),
                            MessageDetailsCustomTextField(
                              controller: nameController,
                              hintText: 'full_name',
                              preIcon: Assets.images.personIcon.path,
                            ),
                            MessageDetailsCustomTextField(
                              controller: emailController,
                              hintText: 'email',
                              preIcon: Assets.images.emailIcon.path,
                            ),
                            SizedBox(height: 19.h),
                            PhonTextField(
                              mobileController: mobileController,
                            ),
                            MessageTextField(
                              messageController: messageController,
                            ),
                            SizedBox(height: 30.h),
                            Padding(
                              padding: EdgeInsets.only(right: 14.w, left: 14.w),
                              child: CustomButton(
                                height: 51.h,
                                boarderRadius: 10.sp,
                                child: state is ContactUsLoading
                                    ? const Center(
                                        child: CircularProgressIndicator(
                                            color: ColorName.white))
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          // Changed icon to use an SVG image
                                          SizedBox(
                                              height: 16.h,
                                              width: 12.w,
                                              child: Assets.images.rightArrow
                                                  .svg()),
                                          SizedBox(width: 10.w),
                                          // Changed text to be translatable
                                          Text('send'.tr,
                                              style: AppTextStyles
                                                  .kWhite15FontW700),
                                        ],
                                      ),
                                onTap: () {
                                  if (formKey.currentState!.validate()) {
                                    ContactUsCubit().sendMessage(
                                        fullName: nameController.text,
                                        message: messageController.text,
                                        mobile: mobileController.text,
                                        email: emailController.text);
                                  }
                                },
                              ),
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}
