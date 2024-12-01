import 'package:car_wash_mobile_app/core/models/all_services_model/all_services_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/home/data/api_services/all_services_service.dart';

class AllServicesRepo {
  ///TO GET ALL SERVICES DATA
  static Future<ApiResult<List<AllServicesModel>>> getAllServices() async {
    final allServices = await AllServicesApiServices.getAllServicesService();
    // log('$allServices');
    return allServices;
  }
}
