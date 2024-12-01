import 'package:car_wash_mobile_app/features/cart/presentaion/cubits/show_cart_items_cubit/show_cart_items_cubit.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/widgets/cart_item.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/widgets/cart_item_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Created by: Nadeen Mohamed
// Created at date: 20/10/2024
// This widget is for the listview which contains cart items
class CartItemsListview extends StatelessWidget {
  const CartItemsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowCartItemsCubit, ShowCartItemsState>(
      
      builder: (context, state) {
        if (state is ShowCartItemsSuccess) {
            final cartItems = state.cartItems.data; // List of cart items
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount:
                cartItems.length, // Access the data list directly
            itemBuilder: (context, index) {
              return CartItem(
                item:
                   cartItems[index], // Pass each item in data list
              );
            },
          );
        } else if (state is ShowCartItemsFailure) {
          return Text(state.error.statusMessage);
        } else {
          return const CartItemShimmer();
        }
      },
    );
  }
}
