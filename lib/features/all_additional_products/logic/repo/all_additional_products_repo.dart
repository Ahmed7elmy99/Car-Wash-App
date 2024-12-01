import 'package:car_wash_mobile_app/core/models/additional_product/additional_product_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/all_additional_products/data/api_services/all_additional_product_service.dart';
//created by omnia mohamed [3/11/2024]
class AllAdditionalProductsRepo {
  ///TO GET ALL ADDITIONAL PRODUCTS DATA
  static Future<ApiResult<List<AdditionalProductModel>>>
      getAllAdditionalProducts() async {
    final allProducts =
        await AllAdditionalProductService.getAllAdditionalProductService();
    return allProducts;
  }
}
