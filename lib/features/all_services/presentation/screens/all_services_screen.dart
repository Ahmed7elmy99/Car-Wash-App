import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/features/all_services/presentation/widget/all_services_list.dart';
import 'package:car_wash_mobile_app/features/home/presentation/cubit/all_services/all_services_cubit.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/home_sections_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

//created by omnia mohamed [3/11/2024]
class AllServicesScreen extends StatefulWidget {
  const AllServicesScreen({super.key});
  static const String id = '/AllServicesScreen';

  @override
  State<AllServicesScreen> createState() => _AllServicesScreenState();
}

class _AllServicesScreenState extends State<AllServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllServicesCubit()..getAllService(),
      child: Scaffold(
        appBar: AppBar(leading: const CustomBackButton()),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                  start: 16.w, end: 16.w, bottom: 0.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HomeSectionsTitle(title: "services".tr),
                    ],
                  ),
                  const AllServicesList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}