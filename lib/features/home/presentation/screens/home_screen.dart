/*
edited by : Mohamed Waleed
edited at : 21/10/2024
edits : 
remove all type parameter becuase it is removed from the parameters of plan Model

 */

import 'package:car_wash_mobile_app/features/addresses/presentation/screens/addresses_screen.dart';
import 'package:car_wash_mobile_app/features/all_additional_products/presentation/cubit/all_additional_products/all_additional_products_cubit.dart';
import 'package:car_wash_mobile_app/features/all_additional_products/presentation/screens/additional_products_screen.dart';
import 'package:car_wash_mobile_app/features/all_services/presentation/screens/all_services_screen.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/cubits/show_cart_items_cubit/show_cart_items_cubit.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/screens/cart_screen.dart';
import 'package:car_wash_mobile_app/features/home/presentation/cubit/add_to_cart/add_to_cart_cubit.dart';
import 'package:car_wash_mobile_app/features/home/presentation/cubit/all_plans/all_plans_cubit.dart';
import 'package:car_wash_mobile_app/features/home/presentation/cubit/all_services/all_services_cubit.dart';
import 'package:car_wash_mobile_app/features/home/presentation/cubit/offer/offer_cubit.dart';
import 'package:car_wash_mobile_app/features/home/presentation/screens/bottom_nav_bar.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/fast_services_list.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/services/all_services_list_home.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/cart_button.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/home_planes_list.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/home_sections_title.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/location_section.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/notification_button.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/offers/offers_list.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/search_text_field.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/user_profile_image.dart';
import 'package:car_wash_mobile_app/features/notifications/presentation/screen/notification_screen.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String id = '/HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
@override

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => OfferCubit()..getOffers()),
          BlocProvider(
              create: (context) =>
                  AllAdditionalProductsCubit()..getAllProducts()),
          BlocProvider(
              create: (context) => AllServicesCubit()..getAllService()),
          BlocProvider(create: (context) => AllPlansCubit()..getAllPlans()),
          BlocProvider(create: (context) => ProfileCubit()..getProfileData()),
          BlocProvider(create: (context) => AddToCartCubit()),
          // BlocProvider(
          //   create: (context) => ShowCartItemsCubit()..getCartItems(),
          // ),
        ],
        child: Scaffold(
          body: SafeArea(
              child: SingleChildScrollView(
            child: Padding(
              ///edited padding from symmetric to this , to remove the white space above bottom navigation bar
              ///edited by naira ali
              ///edited at 15/10/2024
              padding: EdgeInsetsDirectional.only(
                  top: 16.h, start: 16.w, end: 16.w, bottom: 0.h),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///APP BAR
                    Row(
                      children: [
                        /**
                         * moved the Gesture detector and onTap inside [UserProfileImage] widget
                         * edited by Naira Ali
                         */
                        const UserProfileImage(),
                        SizedBox(width: 15.95.w),
                        //Edit By :  Mohmaed Waleed
                        //Edit Date : 21/10/2024
                        //edits : add functionality to cart button to navigate to cart screen
                        CartButton(onTap: () {
                          // edited by omnia mohamed [24/11/2024]
                               context.pushNamed(BottomNavBar.id,extra: 1);
                              // BottomNavBar.switchToTab(context, 1);
                    
                        }),
                        NotificationButton(
                          onTap: () {
                            setState(() {
                              //Edit By : Abdullah Ghaith
                              //Edit Date : 14/10/2024
                              //Edit Note : this is for navigation to the notification screen when its done

                              //Edit By :  Mohmaed Waleed
                              //Edit Date : 21/10/2024
                              //Edit Note : remove condtion to check if the context is mounted
                              context.pushNamed(NotificationScreen.id);
                            });
                          },
                        ),
                        const Spacer(),
                        /**
                         * edited by Naira Ali [11/10/2024]
                         * un commented location section
                         */
                        LocationSection(onTap: () {
                          //Edit By : Abdullah Ghaith
                          //Edit Date : 14/10/2024
                          //Edit Note : this is for navigation to the address screen

                          //Edit By :  Mohmaed Waleed
                          //Edit Date : 21/10/2024
                          //Edit Note : remove condtion to check if the context is mounted
                          context.pushNamed(AddressesScreen.id);
                        }),
                      ],
                    ),
                    SizedBox(height: 15.5.h),

                    /**
                     * edited by Naira Ali [11/10/2024]
                     * un commented search field
                     */
                    ///SEARCH
                    SearchTextField(searchController: searchController),

                    ///OFFERS
                    HomeSectionsTitle(title: "offers".tr),
                    const OffersList(),

                    /**
                     * deleted fast services section
                     * deleted by Naira Ali[27/10/2024]
                     */
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeSectionsTitle(title: "products".tr),
                        IconButton(
                            onPressed: () {
                              context.push(AdditionalProductsScreen.id);
                            },
                            icon: const Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                    FastServicesList(
                      onTap: () {}
                    ),

                    ///SERVICES
                    // edited by omnia mohamed [3/11/2024]
                    //button added to navigate to all services screen
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeSectionsTitle(title: "services".tr),
                        IconButton(
                            onPressed: () {
                              context.push(AllServicesScreen.id);
                            },
                            icon: const Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                    const AllServicesListHome(),

                    ///PLANS
                    HomeSectionsTitle(title: "planes".tr),
                    const HomePlanesList(),
                    SizedBox(height: 45.h),
                  ],
                ),
              ),
            ),
          )),
        ));
  }
}