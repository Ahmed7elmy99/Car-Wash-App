import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/core/models/all_plans/all_plans_model.dart';
import 'package:car_wash_mobile_app/core/models/all_services_model/all_services_model.dart';
import 'package:car_wash_mobile_app/core/models/booking/detailed_booking_data.dart';
import 'package:car_wash_mobile_app/core/models/offers/offers_model.dart';
import 'package:car_wash_mobile_app/core/shared_pref/shared_pref.dart';
import 'package:car_wash_mobile_app/features/add_new_address/presentation/screens/add_new_address_screen.dart';
import 'package:car_wash_mobile_app/features/addresses/presentation/cubit/address_cubit.dart';
import 'package:car_wash_mobile_app/features/addresses/presentation/screens/addresses_screen.dart';
import 'package:car_wash_mobile_app/features/all_additional_products/presentation/screens/additional_products_screen.dart';
import 'package:car_wash_mobile_app/features/all_services/presentation/screens/all_services_screen.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/cubits/show_cart_items_cubit/show_cart_items_cubit.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/screens/cart_screen.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/screens/success_message_screen.dart';
import 'package:car_wash_mobile_app/features/choose_address/presentation/choose_address_screen.dart';
import 'package:car_wash_mobile_app/features/contact_us/presentation/screens/contact_us_screen.dart';
import 'package:car_wash_mobile_app/features/forget_password/presentation/screens/forget_password_screen.dart';
import 'package:car_wash_mobile_app/features/home/presentation/screens/bottom_nav_bar.dart';
import 'package:car_wash_mobile_app/features/home/presentation/screens/home_screen.dart';
import 'package:car_wash_mobile_app/features/language_screen/language_screen.dart';
import 'package:car_wash_mobile_app/features/notifications/presentation/screen/notification_screen.dart';
import 'package:car_wash_mobile_app/features/offer_details/presentation/screens/offer_details_screen.dart';
import 'package:car_wash_mobile_app/features/offer_details/presentation/widgets/offer_details_body.dart';
import 'package:car_wash_mobile_app/features/onboarding/screen/onboarding_screen.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/booking_cubit/booking_cubit.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/create_booking_cubit/create_booking_cubit.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/get_all_branches_cubit/get_all_branches_cubit.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/get_user_cars/get_user_cars_cubit.dart';
// Edited by: Nadeen Mohamed
// Edited at date: 24/10/2024
// Edit note: change the path of order service screen after remove views folder
import 'package:car_wash_mobile_app/features/order_service/presentation/screens/order_service_screen.dart';
import 'package:car_wash_mobile_app/features/payment/presentation/screens/payment_screen.dart';
import 'package:car_wash_mobile_app/features/plans/presentation/screens/plans_screen.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/cubits/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:car_wash_mobile_app/features/user_planes/data/model/single_plan_info_model.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/cubits/packages_cubit/packages_cubit.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/screen/package_detailed_screen.dart';
import 'package:car_wash_mobile_app/features/reservation/presentation/reservations_list_screen.dart';
import 'package:car_wash_mobile_app/features/search/presentation/cubit/search_cubit.dart';
// Edited by: nadeen mohamed
// Edited at date: 24/10/2024
// Edit note: import the correct path of search screen
import 'package:car_wash_mobile_app/features/search/presentation/search_screen.dart';
import 'package:car_wash_mobile_app/features/service_details/presentation/screens/car_details_screen.dart';
import 'package:car_wash_mobile_app/features/service_details/presentation/screens/service_details_screen.dart';
import 'package:car_wash_mobile_app/features/settings/presentation/screens/setting_view.dart';
import 'package:car_wash_mobile_app/features/sign_in/presentation/screens/sign_in_screen.dart';
import 'package:car_wash_mobile_app/features/sign_up/presentation/screen/sign_up_screen.dart';
import 'package:car_wash_mobile_app/features/terms_and_conditions/presentation/screens/terms_&_conditions_screen.dart';
// Edited by: Nadeen Mohamed
// Edited at date: 29/10/2024
// Edit note: Import the correct path of terms and conditions screen
import 'package:car_wash_mobile_app/features/track_order/screens/track_order_screen.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/screen/plan_service_booking_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/otp/presentation/screens/otp_screen.dart';
import '../../features/profile/presentation/screens/edit_profile_screen.dart';

// we agreed to remove my routes and make an static String id in every screen for id

/* 
editd by : Mohamed Waleed
edited at : 14/10/2024
edits :
- make all the needed imports 
- remove (=) and convert it to (:)
- remove duplicated route for OrderServiceScreen
- make the initial location LanguageScreen
 */
abstract class AppRouter {
  // Edited by: Nadeen Mohamed
  // Edited at date: 7/11/2024
  // Edit note: Check if the first time, navigate to Language screen
  // else navigate to home view
  /*
   * deleted the dead code
   * changed the initial route if the user logged in for the first time from 
   * edited by Naira Ali[7/11/2024]
   */

  static String get intialRoute {
    if (SharedPref().intialRoute()) {
      return BottomNavBar.id;
    } else {
      return LanguageScreen.id;
    }
  }

  static GoRouter goRouter = GoRouter(
    initialLocation: intialRoute,
    routes: [
      GoRoute(
        path: LanguageScreen.id,
        name: LanguageScreen.id,
        builder: (context, state) => const LanguageScreen(),
      ),
      GoRoute(
        // Edited by: Nadeen Mohamed
        // Edited at date: 31/10/2024
        //  Edit note: Chanege the name from CarDetailsView to CarDetailsScreen
        path: CarDetailsScreen.id,
        name: CarDetailsScreen.id,
        builder: (context, state) => const CarDetailsScreen(),
      ),
      GoRoute(
          // Edited by: Nadeen Mohamed
          // Edited at date: 31/10/2024
          //  Edit note: Chanege the name from ServiceDetailsView to ServiceDetailsScreen
          path: ServiceDetailsScreen.id,
          name: ServiceDetailsScreen.id,
          builder: (context, state) {
            // Edited by: Nadeen Mohamed
            // Edited at date: 7/11/2024
            // Edit note: send DetailedBookingData model to service details screen
            final extra = state.extra as DetailedBookingData;
            return ServiceDetailsScreen(
              bookingData: extra,
            );
          }),
      GoRoute(
        path: OnboardingScreen.id,
        name: OnboardingScreen.id,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: PaymentScreen.id,
        name: PaymentScreen.id,
        builder: (context, state) => const PaymentScreen(),
      ),
      GoRoute(
        path: HomeScreen.id,
        name: HomeScreen.id,
        builder: (context, state) =>
            const HomeScreen(), // please add your static id route
      ),
      // edited by omnia [26/11/2024]
      GoRoute(
        path: BottomNavBar.id,
        name: BottomNavBar.id,
        builder: (context, state) {
          final int? index = state.extra as int?;
          return BottomNavBar(
              navigatedIndex: index); // please add your static id route
        },
      ),
      GoRoute(
          path: SignInScreen.id,
          name: SignInScreen.id,
          builder: (context, state) =>
              const SignInScreen()), // please add your static id route
      GoRoute(
          path: ReservationsListScreen.id,
          name: ReservationsListScreen.id,
          builder: (context, state) => const ReservationsListScreen()),
      GoRoute(
        path: SearchScreen.id,
        name: SearchScreen.id,
        builder: (context, state) {
          final searchQuery =
              (state.extra as Map<String, dynamic>?)?['searchQuery'] ?? '';
          return BlocProvider(
            create: (context) => SearchCubit(),
            child: SearchScreen(searchQuery: searchQuery),
          );
        },
      ),
      GoRoute(
          path: AddressesScreen.id,
          name: AddressesScreen.id,
          builder: (context, state) => BlocProvider(
                create: (context) => AddressCubit(),
                // Edited by: Nadeen Mohamed
                // Edited at date: 29/10/2024
                // Edit note: Add const keyword
                child: const AddressesScreen(),
              )),
      GoRoute(
          path: OrderServiceScreen.id,
          name: OrderServiceScreen.id,
          // Edited by: Nadeen Mohamed
          // Edited at date: 29/10/2024
          // Edit note: pass offerModel to order service screen
          builder: (context, state) {
            final serviceModel = state.extra as AllServicesModel;
            // Edited by: Nadeen Mohamed
            // Edited at date: provide BookingCubit, CreateBookingCubit and GetUserCarsCubit to orderServiceScreen
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => BookingCubit(),
                ),
                BlocProvider(
                  create: (context) => CreateBookingCubit(),
                ),
                // created by: Nadeen Mohamed
                // Created at date: 7/11/2024
                // Provide GetUsersCubit to OrderServiceScreen
                BlocProvider(
                  create: (context) => GetUserCarsCubit(),
                ),
                // Edited by: Nadeen Mohamed
                // Edited at date: 10/11/2024
                // Edite note: Provide GetAllBranchesCubit to order service screen
                BlocProvider(
                  create: (context) => GetAllBranchesCubit(),
                ),
              ],
              child: OrderServiceScreen(service: serviceModel),
            );
          }),
      GoRoute(
          path: SignupScreen.id,
          name: SignupScreen.id,
          builder: (context, state) => const SignupScreen()),
      GoRoute(
          path: ProfileScreen.id,
          name: ProfileScreen.id,
          builder: (context, state) => const ProfileScreen()),
      GoRoute(
          path: TrackOrderScreen.id,
          name: TrackOrderScreen.id,
          builder: (context, state) => const TrackOrderScreen()),
      GoRoute(
          path: NotificationScreen.id,
          name: NotificationScreen.id,
          builder: (context, state) => const NotificationScreen()),
      GoRoute(
          path: TermsScreen.id,
          name: TermsScreen.id,
          builder: (context, state) => const TermsScreen()),
      GoRoute(
          path: OtpScreen.id,
          name: OtpScreen.id,
          builder: (context, state) => const OtpScreen()),
      GoRoute(
        path: EditProfileScreen.id,
        name: EditProfileScreen.id,
        builder: (context, state) {
          final data = state.extra! as Map<String, dynamic>;
          return BlocProvider(
            create: (context) =>
                EditProfileCubit()..initializeControllers(data['profileModel']),
            child: const EditProfileScreen(),
          );
        },
      ),
      GoRoute(
          path: PlansScreen.id,
          name: PlansScreen.id,
          builder: (context, state) => const PlansScreen()),
      //add messing ,
      // Edited by: Ghaith mohamed
      // Edited at date: 28/10/2024
      GoRoute(
        path: AddNewAddressScreen.id,
        name: AddNewAddressScreen.id,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>? ?? {};
          final isEdit =
              extra['isEdit'] as bool? ?? false; // to access the isEdit mode
          final addressModel = extra['addressModel']
              as AddressModel?; // to access the address model

          return AddNewAddressScreen(
            isEdit: isEdit,
            addressModel: addressModel, // Pass the address model to the screen
          );
        },
      ),
      // Start adding by nadeen at (20/10/2024)
      // Edited by: Nadeen Mohamed
      // Edited at date: 20/10/2024
      // Edit note: Add new route for cart screen
      //edited by omnia [21/11/2024]
      GoRoute(
        path: CartScreen.id,
        name: CartScreen.id,
        builder: (context, state) => BlocProvider(
          create: (context) => ShowCartItemsCubit(),
          child: const CartScreen(),
        ),
      ),
      // Edited by: Nadeen Mohamed
      // Edited at date: 20/10/2024
      // Edit note: Add new route for Success Message Screen
      GoRoute(
        path: SuccessMessageScreen.id,
        name: SuccessMessageScreen.id,
        builder: (context, state) => const SuccessMessageScreen(),
      ),
      // End by: Nadeen Mohamed at date(20/10/2024)
      GoRoute(
          path: ContactUsScreen.id,
          name: ContactUsScreen.id,
          builder: (context, state) => const ContactUsScreen()),
      GoRoute(
          path: SettingView.id,
          name: SettingView.id,
          builder: (context, state) => SettingView()),
      //added by Waleed (1/11/2024)
      GoRoute(
          path: ForgetPasswordScreen.id,
          name: ForgetPasswordScreen.id,
          builder: (context, state) => const ForgetPasswordScreen()),
      //end added by Waleed
      //added by omnia mohamed(3/11/2024)
      GoRoute(
          path: AllServicesScreen.id,
          name: AllServicesScreen.id,
          builder: (context, state) => const AllServicesScreen()),
      //added by omnia mohamed(3/11/2024)
      GoRoute(
          path: AdditionalProductsScreen.id,
          name: AdditionalProductsScreen.id,
          builder: (context, state) => const AdditionalProductsScreen()),
      GoRoute(
        path: PackageDetailedScreen.id,
        name: PackageDetailedScreen.id,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>? ?? {};
          return BlocProvider.value(
            value: extra["cubit"] as PackagesCubit,
            child: PackageDetailedScreen(
              packageModel: extra["model"],
              cubit: extra["cubit"],
            ),
          );
        },
      ),
      GoRoute(
        path: PlanServiceBookingScreen.id,
        name: PlanServiceBookingScreen.id,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>? ?? {};
          return MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: extra["cubit"] as PackagesCubit,
              ),
              BlocProvider(
                create: (context) => GetUserCarsCubit(),
              ),
            ],
            child: PlanServiceBookingScreen(
              activeservice: extra["active_model"] as AllPlanServiceItem,
              model: extra["model"] as SinglePlanInfoModel,
            ),
          );
        },
      ),
      GoRoute(
          path: OfferDetailsScreen.id,
          name: OfferDetailsScreen.id,
          builder: (context, state) {
            final offerModel = state.extra as OffersModel;
            return OfferDetailsScreen(offersModel: offerModel);
          }),
      GoRoute(
        path: ChooseAddressScreen.id,
        name: ChooseAddressScreen.id,
        builder: (context, state) {
          final address = state.extra as Function(AddressModel model);
          return BlocProvider(
            create: (context) => AddressCubit(),
            child: ChooseAddressScreen(
              onTap: address,
            ),
          );
        },
      ),
    ],
  );
}
