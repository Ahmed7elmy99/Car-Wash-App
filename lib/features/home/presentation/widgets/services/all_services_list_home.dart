import 'package:car_wash_mobile_app/core/models/all_services_model/all_services_model.dart';
import 'package:car_wash_mobile_app/features/home/presentation/cubit/all_services/all_services_cubit.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/services/all_services_list_item.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/services/shimmer_services_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllServicesListHome extends StatefulWidget {
  const AllServicesListHome({super.key});

  @override
  State<AllServicesListHome> createState() => _AllServicesListHomeState();
}

class _AllServicesListHomeState extends State<AllServicesListHome> {
  late AllServicesCubit allServicesCubit;

  @override
  void initState() {
    allServicesCubit = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return BlocConsumer<AllServicesCubit, AllServicesState>(
      listener: (context, state) {
        print('Current state: $state'); // Log the current state
        if (state is AllServicesLoading) {
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::state is Services Loading");
        } else if (state is AllServicesSuccess<List<AllServicesModel>>) {
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::state is Services Success");
        } else if (state is AllServicesError) {
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::state is Services Error");
          state.error.showError(context);
        }
      },
      builder: (context, state) {
        return state is AllServicesSuccess
            ? Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    // height: 270.h,

                    height: isLandscape
                        ? MediaQuery.of(context).size.height *
                            0.57 // Adjust for landscape
                        : MediaQuery.of(context).size.height * 0.3, // Portrait

                    // height: MediaQuery.of(context).size.height * 0.3,
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final service = state.allServices[index];
                          return AllServicesListItem(service: service);
                        },
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 10.w),
                        itemCount: state.allServices.length),
                  ),
                  SizedBox(height: 27.5.h),
                ],
              )
            : Column(
                children: [
                  const ShimmerServicesItem(),
                  SizedBox(height: 27.5.h),
                ],
              );
      },
    );
  }
}
