import 'package:car_wash_mobile_app/core/models/all_services_model/all_services_model.dart';
import 'package:car_wash_mobile_app/features/home/presentation/cubit/all_services/all_services_cubit.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/services/all_services_list_item.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/services/shimmer_services_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//created by omnia mohamed [3/11/2024]
class AllServicesList extends StatelessWidget {
  const AllServicesList({super.key});

  @override
  Widget build(BuildContext context) {
     final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

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
            ? Container(
          color: Colors.transparent,
          // height: 270.h,

          // height: isLandscape
          //     ? MediaQuery.of(context).size.height *
          //     0.57 // Adjust for landscape
          //     : MediaQuery.of(context).size.height, // Portrait
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Two items per row
              mainAxisSpacing: 15.h, // Spacing between rows
              crossAxisSpacing: 10.w, // Spacing between columns
              childAspectRatio: 0.6.h,
            ),
            itemCount: state.allServices.length,
            itemBuilder: (context, index) {
              final service = state.allServices[index];
              return AllServicesListItem(service: service);
            },
            shrinkWrap: true,
          ),
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