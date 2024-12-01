import 'package:car_wash_mobile_app/features/all_additional_products/presentation/cubit/all_additional_products/all_additional_products_cubit.dart';
import 'package:car_wash_mobile_app/features/all_additional_products/presentation/widgets/all_additional_product_list_item.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/services/shimmer_services_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//created by omnia mohamed [3/11/2024]
class AllAdditionalProductsList extends StatelessWidget {
  const AllAdditionalProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AllAdditionalProductsCubit, AllAdditionalProductsState>(
      listener: (context, state) {
        // Additional logging and error handling here
      },
      builder: (context, state) {
        return state is AllProductSuccess
            ? GridView.builder(
                physics:
                    const NeverScrollableScrollPhysics(), // Disable GridView scrolling
                shrinkWrap: true, // Let GridView take only the necessary space
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two items per row
                  mainAxisSpacing: 15.h, // Spacing between rows
                  crossAxisSpacing: 10.w, // Spacing between columns
                  childAspectRatio: 0.7.h,
                ),
                itemCount: state.allProducts.length,
                itemBuilder: (context, index) {
                  final product = state.allProducts[index];
                  return AllAdditionalProductListItem(
                    product: product,
                  );
                },
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
