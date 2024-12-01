
import 'package:car_wash_mobile_app/core/models/all_plans/all_plans_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/home/data/api_services/all_plans_services.dart';

class AllPlansRepo {
  ///TO GET ALL PLANS DATA
  static Future<ApiResult<List<AllPlansModel>>> getAllPlans() async {
    final allPlans = await AllPlansApiServices.getAllPlansService();
    // log('$allPlans');
    return allPlans;
  }
}
