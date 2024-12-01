import 'dart:developer';

import 'package:car_wash_mobile_app/core/models/add_to_cart/add_to_cart_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/home/data/api_services/add_ro_cart_services.dart';

class AddToCartRepo {
  static Future<ApiResult<AddToCartModel>> addToCart({
    required dynamic planId,
  }) async {
    final addedCartItem = await AddToCartApiServices.addToCart(planId: planId);
    log("$addedCartItem");
    return addedCartItem;
  }
}
