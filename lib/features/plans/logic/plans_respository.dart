import 'package:car_wash_mobile_app/core/models/all_plans/all_plans_model.dart';
import 'package:car_wash_mobile_app/core/models/my_plans/user_plans_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/plans/data/api_service/plans_service.dart';

class PlansRespository {
  static Future<ApiResult<List<UserPlansModel>>> getMyPlans() async {
    return PlansService.getMyPlans();
  }

  static Future<ApiResult<dynamic>> renewMyPlan({required int id}) async {
    return PlansService.renewMyPlan(id: id);
  }

  static Future<ApiResult<List<AllPlansModel>>> getAllPlans() async {
    final allPlans = await PlansService.getAllPlansService();
    return allPlans;
  }
}
