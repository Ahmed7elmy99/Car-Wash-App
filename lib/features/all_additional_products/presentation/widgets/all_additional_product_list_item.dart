import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/localization/translations.dart';
import 'package:car_wash_mobile_app/features/all_additional_products/presentation/cubit/add_product_to_cart/add_product_to_cart_cubit.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/services/add_to_cart_button.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/services/all_services_image.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/services/service_name.dart';
import 'package:car_wash_mobile_app/features/home/presentation/widgets/services/service_price_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import '../../../../../gen/colors.gen.dart';

/// Created by Omnia Mohamed
/// [3/11/2024]
/*edited by omnia mohamed [5/11/2024]
converted to StatefulWidget
*/
class AllAdditionalProductListItem extends StatefulWidget {
  const AllAdditionalProductListItem({super.key, required this.product});
  final product;

  @override
  _AllAdditionalProductListItemState createState() =>
      _AllAdditionalProductListItemState();
}

class _AllAdditionalProductListItemState
    extends State<AllAdditionalProductListItem> {
  late AddProductToCartCubit addProductToCartCubit;
  @override
  void initState() {
    addProductToCartCubit = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: ColorName.grey.withOpacity(0.1))),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
                horizontal: 8.w, vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AllServicesImage(image: widget.product.images[0]),
                SizedBox(height: 10.h),
                ServiceName(name: widget.product.name),
                SizedBox(height: 10.h),
                ServicePriceSection(price: widget.product.price),
              ],
            ),
          ),
          const Spacer(),
          /*edited by omnia mohamed [5/11/2024]
          add blocConsumer on button
          */
          BlocConsumer<AddProductToCartCubit, AddProductToCartState>(
            listener: (context, state) {
              print('Current state: $state'); // Log the current state
              if (state is AddProductToCartLoading) {
                print(
                    "::::::::::::::::::::::::::::::::::::::::::::::::::::: ITEM ADDED TO CART LOADING");
              } else if (state is AddProductToCartSuccess) {
                      //edited by omnia [21/11/2024]
                 showTopSnackBar(
                          Overlay.of(context),
                          CustomSnackBar.error(
                            backgroundColor:
                                Colors.grey.shade200.withOpacity(0.5),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade200.withOpacity(0.5))
                            ],
                            icon: const SizedBox(),
                            textStyle: AppTextStyles.kBlack15FontW600,
                            message: "added_to_cart".tr,
                          ),
                        );
                print(
                    "::::::::::::::::::::::::::::::::::::::::::::::::::::: ITEM ADDED TO CART SUCCESS");
              } else if (state is AddProductToCartError) {
                print(
                    "::::::::::::::::::::::::::::::::::::::::::::::::::::: ITEM ADDED TO CART ERROR");
                state.error.showError(context);
              }
            },
            builder: (context, state) {
              final isLoading = state is AddProductToCartLoading &&
                  state.productId == widget.product.id.toString();

              return isLoading
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: SizedBox(
                            height: 22.h,
                            width: 22.h,
                            child: const CircularProgressIndicator(
                                color: ColorName.black),
                          ),
                        ),
                      ],
                    )
                  : AddToCartButton(
                      text: "add_to_cart".tr,
                      showImage: true,
                      onTap: () {
                        context.read<AddProductToCartCubit>().addProductToCart(
                            productId: widget.product.id.toString());

                    
                       
                      },
                    );
            },
          )
        ],
      ),
    );
  }
}
