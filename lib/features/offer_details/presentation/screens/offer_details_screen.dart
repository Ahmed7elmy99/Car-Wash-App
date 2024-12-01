import 'package:car_wash_mobile_app/core/models/offers/offers_model.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/features/home/presentation/cubit/add_to_cart/add_to_cart_cubit.dart';
import 'package:car_wash_mobile_app/features/offer_details/presentation/widgets/offer_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OfferDetailsScreen extends StatefulWidget {
  const OfferDetailsScreen({super.key, required this.offersModel});

  static String id = "/OfferDetailsScreen";
  final OffersModel offersModel;

  @override
  State<OfferDetailsScreen> createState() => _OfferDetailsScreenState();
}

class _OfferDetailsScreenState extends State<OfferDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddToCartCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: const CustomBackButton(),
          scrolledUnderElevation: 0,
        ),
        body: SafeArea(
          child: OfferDetailsBody(offersModel: widget.offersModel),
        ),
      ),
    );
  }
}
