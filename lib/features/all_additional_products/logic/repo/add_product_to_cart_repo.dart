import 'dart:developer';

import 'package:car_wash_mobile_app/core/models/add_product_to_cart_model/add_product_to_cart_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/all_additional_products/data/api_services/add_product_to_cart_service.dart';
//created by omnia mohamed [5/11/2024]

class AddProductToCartRepo {
  static Future<ApiResult<AddProductToCartModel>> addProductToCart({
    required dynamic productId,
  }) async {
    final addedProductCartItem = await AddProductToCartService .addProductToCart(productId: productId);
    log("$addedProductCartItem");
    return addedProductCartItem;
  }
}
