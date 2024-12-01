/*
Edited by: Mohamed Waleed
Edited at: 19/10/2024
Edits:
- Add PlansScreen to bottom nav bar
*/

// ignore_for_file: avoid_print
import 'package:car_wash_mobile_app/features/cart/presentaion/screens/cart_screen.dart';
import 'package:car_wash_mobile_app/features/home/presentation/screens/home_screen.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:car_wash_mobile_app/features/reservation/presentation/reservations_list_screen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../plans/presentation/screens/plans_screen.dart';
// edited by omnia [26/11/2024]
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key, this.navigatedIndex});
  static const String id = '/bottomNavBarItem';
  final int? navigatedIndex;

  // Added by Omnia Mohamed [24/11/2024]
  // A method to switch tabs programmatically
  static void switchToTab(BuildContext context, int index) {
    final _BottomNavBarState? state =
        context.findAncestorStateOfType<_BottomNavBarState>();
    state?.updateSelectedIndex(index);
  }

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final int _homeIndex = 2;
  late int _selectedIndex;

  // List of pages corresponding to the bottom nav bar items
  final List<Widget> pages = [
    // Profile Screen
    const ProfileScreen(),

    // Cart Screen
    const CartScreen(),

    // Home Screen
    const HomeScreen(),

    // Reservations Screen
    const ReservationsListScreen(),

    // Plans Screen
    const PlansScreen(),
  ];

  // Method to update selected index dynamically
  void updateSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.navigatedIndex ?? _homeIndex;
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: StyleProvider(
        style: Style(),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ConvexAppBar(
            backgroundColor: ColorName.grey,
            height: 70.h,
            activeColor: ColorName.white,
            style: TabStyle.fixedCircle,
            cornerRadius: 20.r,
            curveSize: 115.r,
            color: Colors.white,
            items: [
              TabItem(
                icon: Image.asset(
                  "assets/images/home_icons/bottom_nav_icons/person_icon.png",
                  fit: BoxFit.contain,
                  color: _selectedIndex == 0
                      ? ColorName.veryLightMintGreen
                      : ColorName.veryLightGreyColor,
                ),
                title: "user_profile".tr,
              ),
              TabItem(
                icon: Image.asset(
                  "assets/images/home_icons/bottom_nav_icons/cart_icon.png",
                  fit: BoxFit.contain,
                  color: _selectedIndex == 1
                      ? ColorName.veryLightMintGreen
                      : ColorName.veryLightGreyColor,
                ),
                title: 'cart'.tr,
              ),
              TabItem(
                icon: Padding(
                  padding: EdgeInsetsDirectional.symmetric(
                      vertical: 20.h, horizontal: 20.w),
                  child: Image.asset(
                    "assets/images/home_icons/bottom_nav_icons/home_icon.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              TabItem(
                icon: Image.asset(
                  "assets/images/home_icons/bottom_nav_icons/new_reservations_icon.png",
                  color: _selectedIndex == 3
                      ? ColorName.veryLightMintGreen
                      : ColorName.veryLightGreyColor,
                  fit: BoxFit.contain,
                ),
                title: 'my_reservations'.tr,
              ),
              TabItem(
                icon: Image.asset(
                  "assets/images/home_icons/bottom_nav_icons/packages_icon.png",
                  color: _selectedIndex == 4
                      ? ColorName.veryLightMintGreen
                      : ColorName.veryLightGreyColor,
                  fit: BoxFit.contain,
                ),
                title: 'packages'.tr,
              ),
            ],
            initialActiveIndex: _selectedIndex,
            onTap: (int index) {
              // Handle tab switching
              setState(() {
                _selectedIndex = index;
                print('Selected index: $index');
              });
            },
          ),
        ),
      ),
    );
  }
}

class Style extends StyleHook {
  @override
  double get activeIconSize => 16.w;

  @override
  double get activeIconMargin => 10.r;

  @override
  double get iconSize => 16.w;

  @override
  TextStyle textStyle(Color color, String? fontFamily) {
    return TextStyle(fontSize: 9.8.sp, color: color);
  }
}
