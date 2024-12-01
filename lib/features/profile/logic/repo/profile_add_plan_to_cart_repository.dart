import 'package:car_wash_mobile_app/core/models/add_to_cart/add_to_cart_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/profile/data/api_service/profile_add_plan_to_cart_service.dart';

class AddPlanToCartRepository {
  static Future<ApiResult<AddToCartModel>> addToCart({
    required dynamic planId,
  }) async {
    final addedCartItem =
        await ProfileAddPlanToCartService.addToCart(planId: planId);
    return addedCartItem;
  }
}
