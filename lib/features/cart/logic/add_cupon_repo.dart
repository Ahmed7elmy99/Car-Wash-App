// start: created by helmy
//creat At Date (30/10/2024)
// created : AddCuponRepository repo

import 'package:car_wash_mobile_app/core/models/cupon/cupon_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/cart/data/api_service/cupon_service.dart';

class AddCuponRepository {
  static Future<ApiResult<CuponModel>> applyCupon({
    required String cuponNumber,}) {
    return CuponService.addCupon(cuponNumber:cuponNumber );
  }
}
