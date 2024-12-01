/*
edited by :Mohamed Waleed
edited at : 19/10/2024
edits :
using image provider instead of Image.asset() in circle avatar
 */

import 'package:car_wash_mobile_app/core/models/additional_product/additional_product_model.dart';
import 'package:car_wash_mobile_app/features/all_additional_products/presentation/cubit/all_additional_products/all_additional_products_cubit.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/product_shimmer_list.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/products_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FastServicesList extends StatelessWidget {
  const FastServicesList({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AllAdditionalProductsCubit, AllAdditionalProductsState>(
      listener: (context, state) {
        print('Current state: $state'); // Log the current state
        if (state is AllProductLoading) {
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::state is Services Loading");
        } else if (state is AllProductSuccess<List<AdditionalProductModel>>) {
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::state is Services Success");
        } else if (state is AllProductError) {
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::state is Services Error");
          state.error.showError(context);
        }
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              // Edited by: Nadeen Mohamed
              // Edited at date: 9/11/2024
              // Edite note: Change the height of SizedBox 
              height: 115.h,
              child: state is AllProductSuccess
                  ? ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => ProductsListItem(
                            onTap: () {},
                            productModel: state.allProducts[index],
                          ),
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 10.w),
                      itemCount: state.allProducts.length)
                  : const ProductShimmerList(),
            ),
            SizedBox(height: 25.h),
          ],
        );
      },
    );
  }
}
