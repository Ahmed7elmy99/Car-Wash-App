/*
edited by : mohamed waleed
edited at : 19/10/2024
edits : 
remove the unused imports
 */
import 'package:car_wash_mobile_app/core/models/offers/offers_model.dart';
import 'package:car_wash_mobile_app/features/home/presentation/cubit/offer/offer_cubit.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/offers/offers_list_item.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/shimmer_offer_item.dart';

// Edited by: Nadeen Mohamed
// Edited at date: 24/10/2024
// Edit note: change the path of order service screen after remove views folder
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersList extends StatefulWidget {
  const OffersList({super.key});

  @override
  State<OffersList> createState() => _OffersListState();
}

class _OffersListState extends State<OffersList> {
  late OfferCubit offerCubit;

  @override
  void initState() {
    offerCubit = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OfferCubit, OfferState>(
      listener: (context, state) {
        print('Current state: $state'); // Log the current state
        if (state is OfferLoading) {
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::state is Offers Loading");
        } else if (state is OfferSuccess<List<OffersModel>>) {
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::state is Offers Success");
        } else if (state is OfferError) {
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::state is Offers Error");
          state.error.showError(context);
        }
      },
      builder: (context, state) {
        return state is OfferSuccess
            ? Column(
                children: [
                  Container(
                    height: 150.h,
                    color: Colors.transparent,
                    child: ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final offerData = state.offer;
                          return OffersListItem(offerData: offerData[index]);
                        },
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 10.w),
                        itemCount: state.offer.length),
                  ),
                  SizedBox(height: 24.h),
                ],
              )
            : state is OfferLoading
                ? Column(
                    children: [
                      Container(
                          height: 150.h,
                          color: Colors.transparent,
                          child: const ShimmerOfferItem()),
                      SizedBox(height: 24.h),
                    ],
                  )
                : state is OfferError
                    ? Center(child: Text(state.error.toString()))
                    : const Center(child: Text("Un expected error"));
      },
    );
  }
}
