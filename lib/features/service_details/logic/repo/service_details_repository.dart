import 'package:car_wash_mobile_app/core/models/service_details/service_details_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/service_details/data/api_service/service_details.dart';
// start: created by helmy
//creat At Date (30/10/2024)
// created : ServiceDetails repo

class ServiceDetailsRepository {
  static Future<ApiResult<List<ServiceDetailsModel>>> getServiceDetails() {
    return ServiceDetailsService.getServiceDetails();
  }
}
