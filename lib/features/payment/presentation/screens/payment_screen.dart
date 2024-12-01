import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/features/payment/presentation/payment_cubit/payment_cubit.dart';
import 'package:car_wash_mobile_app/features/payment/presentation/widgets/payment_screen_body.dart';
import 'package:car_wash_mobile_app/features/payment/presentation/widgets/payment_screen_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});
  static String id = "/payment";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          leading: const CustomBackButton(),
          scrolledUnderElevation: 0,
        ),
        body: BlocProvider(
          create: (context) => PaymentCubit()..getPaymentWays(),
          child: BlocBuilder<PaymentCubit, PaymentState>(
            builder: (context, state) {
              if (state is PaymentWaysLoading) {
                return const PaymentScreenShimmer();
              }
              return const PaymentScreenBody();
            },
          ),
        ),
      ),
    );
  }
}
