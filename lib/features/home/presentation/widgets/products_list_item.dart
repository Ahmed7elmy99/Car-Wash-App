import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/additional_product/additional_product_model.dart';
import 'package:car_wash_mobile_app/features/all_additional_products/presentation/cubit/all_additional_products/all_additional_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsListItem extends StatefulWidget {
  const ProductsListItem({super.key, required this.onTap, required this.productModel});

  final VoidCallback onTap;
  final AdditionalProductModel productModel;

  @override
  State<ProductsListItem> createState() => _ProductsListItemState();
}

class _ProductsListItemState extends State<ProductsListItem> {

 late AllAdditionalProductsCubit allAdditionalProductsCubit;
  @override
  void initState() {
    allAdditionalProductsCubit= BlocProvider.of(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final product= widget.productModel;
    return InkWell(
      onTap: widget.onTap,
      child: SizedBox(
        width: 82.w,
        height: 105.h,
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(product.images[0]),
              radius: 35.r,
            ),
            SizedBox(height: 5.h),
            Center(child: Text(
              product.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.kGray10FontW700,
            ),),
          ],
        ),
      ),
    );
  }
}
