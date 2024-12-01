import 'package:car_wash_mobile_app/core/models/cars_types/cars_types_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/service_details/data/api_service/car_types_service.dart';

class GetCarTypesRepository {
  static Future<ApiResult<List<CarsTypesModel>>> getCarTypes() {
    return CarTypesService.getCarTypes();
  }
}
