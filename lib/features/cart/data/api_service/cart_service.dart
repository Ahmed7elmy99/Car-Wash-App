// Edited by: Nadeen Mohamed
// Edited at date: 27/10/2024
/*
Edits:
- create showCartService class
- create getCartItems method
*/
import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/cart/cart_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';

class ShowCartService {
  static final Dio _dio = DioConfig.getDio();

  static Future<ApiResult<CartItemModel>> getCartItems() {
    return ApiCallHandler.handleApiCall(
      apiCall: () {
        return _dio.get(AppStrings.showCart);
      },
      parser: ({required data}) {
        print('Raw API Response: $data'); // Log the raw API response

        if (data == null) {
          print('No Items found in API response');
          return CartItemModel(data: [], totalPrice: 0, status: '', message: '');
        }

        // Parse the entire response as a single CartItemModel object
        return CartItemModel.fromJson(data);
      },
    );
  }
}
