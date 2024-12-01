import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/features/all_additional_products/logic/repo/add_product_to_cart_repo.dart';
import 'package:car_wash_mobile_app/features/all_additional_products/presentation/cubit/add_product_to_cart/add_product_to_cart_cubit.dart';
import 'package:car_wash_mobile_app/features/cart/logic/remove_from_cart_repo.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/cubits/add_cupon_cubit/cupon_cubit.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/cubits/remove_from_cart_cubit/remove_from_cart_cubit.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/cubits/show_cart_items_cubit/show_cart_items_cubit.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/widgets/cart_screen_body.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Created by: nadeen mohamed
// Created at date: 20/10/2024
// This widget for Cart screen (Either empty or not)
class CartScreen extends StatelessWidget {
  static const String id = '/cartScreen';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: ColorName.white,
        automaticallyImplyLeading: false,
        //Edited by: Nadeen Mohamed
        // Edited at date: 21/11/2024
        // Edite note: remove CustomBackButton
      ),
      // Edited by: Nadeen Mohamed
      // Edited at date: 27/10/2024
      // Edits: Provide show cart items cubit to cart screen body
      body: SafeArea(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => ShowCartItemsCubit()..getCartItems(),
            ),
            // added BlocProvider by Omnia Mohamed [7/11/2024]
            BlocProvider(
              create: (context) => CuponCubit(),
            ),
            // Updated BlocProvider for RemoveFromCartCubit with repository injection
               //edited by omnia [21/11/2024]
            BlocProvider(
              create: (context) => RemoveFromCartCubit(
                removeFromCartRepo: RemoveFromCartRepo(),
                showCartItemsCubit: context.read<ShowCartItemsCubit>(),
              ),
            ),
      //edited by omnia [21/11/2024]
            BlocProvider(
              create: (context) => AddProductToCartCubit(
                showCartItemsCubit:
                    BlocProvider.of<ShowCartItemsCubit>(context), 
                    addProductToCartRepo: AddProductToCartRepo(),
              ),
            )
          ],
          child: const CartScreenBody(),
        ),
      ),
    );
  }
}
