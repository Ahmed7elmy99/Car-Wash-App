import 'package:car_wash_mobile_app/core/models/remove_from_cart/remove_from_cart_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/cart/data/api_service/remove_from_cart_service.dart';
//created by omnia mohamed [11/11/2024]
class RemoveFromCartRepo {
  // Method to call the service and handle the remove from cart API
  Future<ApiResult<RemoveFromCartModel>> removeFromCart(int id) async {
    // Call the service and pass the ID for removing from the cart
    return RemoveFromCartService.deleteProduct(itemId: id );
  }
}
