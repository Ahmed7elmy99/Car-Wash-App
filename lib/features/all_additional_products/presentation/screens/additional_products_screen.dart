import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/features/all_additional_products/logic/repo/add_product_to_cart_repo.dart';
import 'package:car_wash_mobile_app/features/all_additional_products/presentation/cubit/add_product_to_cart/add_product_to_cart_cubit.dart';
import 'package:car_wash_mobile_app/features/all_additional_products/presentation/cubit/all_additional_products/all_additional_products_cubit.dart';
import 'package:car_wash_mobile_app/features/all_additional_products/presentation/widgets/all_additional_products_list.dart';
import 'package:car_wash_mobile_app/features/cart/presentaion/cubits/show_cart_items_cubit/show_cart_items_cubit.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/home_sections_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class AdditionalProductsScreen extends StatefulWidget {
  const AdditionalProductsScreen({super.key});
  static const String id = '/AdditionalProductsScreen';

  @override
  State<AdditionalProductsScreen> createState() => _AdditionalProductsScreenState();
}

class _AdditionalProductsScreenState extends State<AdditionalProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Provide ShowCartItemsCubit first so AddProductToCartCubit can access it
        BlocProvider(create: (context) => ShowCartItemsCubit()),
      //edited by omnia [21/11/2024]
        //  provide AddProductToCartCubit
        BlocProvider(
          create: (context) => AddProductToCartCubit(
            showCartItemsCubit: context.read<ShowCartItemsCubit>(), 
            addProductToCartRepo: AddProductToCartRepo(),
          ),
        ),

        // Provide other cubits
        BlocProvider(
          create: (context) => AllAdditionalProductsCubit()..getAllProducts(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(leading: const CustomBackButton()),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 16.w, end: 16.w, bottom: 0.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HomeSectionsTitle(title: "additional_product".tr),
                    ],
                  ),
                  const AllAdditionalProductsList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
