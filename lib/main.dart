import 'package:car_wash_mobile_app/core/localization/translations.dart';
import 'package:car_wash_mobile_app/core/routes/app_router.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/utils/storage.dart';
import 'package:car_wash_mobile_app/features/notifications/data/firebase_service/firebase_api.dart';
import 'package:car_wash_mobile_app/features/notifications/presentation/cubit/notification_cubit.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:car_wash_mobile_app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// Edited by: Nadeen Mohamed
// Edited at date: 31/10/2024
// Edit Note: remove unused imports

import 'core/shared_pref/shared_pref.dart';
import 'core/utils/simple_observer.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  // Ensure that the app is ready before removing the splash screen
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await FireBaseApi.initNotifications();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  ///Loades the prefrence
  await SharedPref().setupPref();
  //initialize secure storage
  Storage.instance.initStorage();
  //bloc observer
  Bloc.observer = SimpleObserver();
  await dotenv.load(fileName: ".env");

  runApp(const MyApp());

  // Remove splash screen once the app is ready
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        AppScreenUtils.initUtils(context);
        return BlocProvider(
          create: (context) => NotificationCubit()..init(),
          child: GetMaterialApp.router(
            routeInformationParser: AppRouter.goRouter.routeInformationParser,
            routerDelegate: AppRouter.goRouter.routerDelegate,
            routeInformationProvider:
                AppRouter.goRouter.routeInformationProvider,
            translations: AppTranslations(),
            locale: Get.locale ?? const Locale("ar"),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                color: Colors.white,
              ),
              //edited by : waleed
              //edited at : 21/10/2024
              //edits : make the color of selection color to be green and change the color of handle
              textSelectionTheme: TextSelectionThemeData(
                selectionColor: ColorName.green.withOpacity(0.5),
                selectionHandleColor: ColorName.green,
              ),
              fontFamily: FontFamily.almarai,
              useMaterial3: true,
              brightness: Brightness.light,
              scaffoldBackgroundColor: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
