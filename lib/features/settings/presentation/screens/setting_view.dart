import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/features/contact_us/presentation/cubit/contact_us_cubit.dart';
import 'package:car_wash_mobile_app/features/contact_us/presentation/screens/contact_us_screen.dart';
import 'package:car_wash_mobile_app/features/home/presentation/screens/bottom_nav_bar.dart';
import 'package:car_wash_mobile_app/features/settings/presentation/widgets/notification_switch_button.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:car_wash_mobile_app/features/reservation/presentation/reservations_list_screen.dart';
import 'package:car_wash_mobile_app/features/settings/presentation/cubit/logout_cubit.dart';
import 'package:car_wash_mobile_app/features/settings/presentation/widgets/language_switch_button.dart';
import 'package:car_wash_mobile_app/features/settings/presentation/widgets/logout_button.dart';
import 'package:car_wash_mobile_app/features/settings/presentation/widgets/setting_item.dart';
import 'package:car_wash_mobile_app/features/settings/presentation/widgets/user_setting_info.dart';
import 'package:car_wash_mobile_app/features/terms_and_conditions/presentation/screens/terms_&_conditions_screen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  static const String id = '/settingScreen';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => LogoutCubit()),
          BlocProvider(create: (context) => ProfileCubit()..getProfileData()),
          BlocProvider(create: (context) => ContactUsCubit()),
        ],
        child: Scaffold(
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
                        bottom: 18.5.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "setting".tr,
                            style: AppTextStyles.kGray15FontW700,
                          ),
                          const UserSettingInfo(),
                        ],
                      )),
                  Divider(
                    color: ColorName.grey.withOpacity(0.05),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.w, 23.h, 21.w, 23.h),
                    child: Column(
                      children: [
                        const SettingItem(
                          text: 'language',
                          widget: LanguageSwitchButton(),
                          isArrow: false,
                        ),
                        const SettingItem(
                          text: 'allow_notifications',
                          widget: NotificationSwitchButton(),
                          isArrow: false,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.w, 32.h, 0.w, 0.w),
                          child: Divider(
                            color: ColorName.grey.withOpacity(0.05),
                          ),
                        ),
                        SettingItem(
                          text: 'my_profile',
                          isArrow: true,
                          onTap: () {
                            context.pushNamed(BottomNavBar.id,extra: 0);
                            // BottomNavBar.switchToTab(context, 0);
                          },
                        ),
                        SettingItem(
                          text: 'Reservation',
                          isArrow: true,
                          onTap: () {
                            // context.pushNamed(ReservationsListScreen.id);
                                context.pushNamed(BottomNavBar.id,extra: 3);
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.w, 20.h, 0.w, 0.w),
                          child: Divider(
                            color: ColorName.grey.withOpacity(0.05),
                          ),
                        ),
                        SettingItem(
                          text: 'call_us',
                          isArrow: true,
                          onTap: () {
                            context.pushNamed(ContactUsScreen.id);
                          },
                        ),
                        SettingItem(
                          text: 'service_instructions',
                          isArrow: true,
                          onTap: () {
                            context.pushNamed(TermsScreen.id);
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.w, 20.h, 0.w, 0.w),
                          child: Divider(
                            color: ColorName.grey.withOpacity(0.05),
                          ),
                        ),
                        const LogoutButton()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
