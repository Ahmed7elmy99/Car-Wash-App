import 'package:car_wash_mobile_app/core/models/all_plans/all_plans_model.dart';
import 'package:car_wash_mobile_app/core/models/my_plans/user_plans_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/user_planes/data/api_service/packages_service.dart';
import 'package:car_wash_mobile_app/features/user_planes/data/model/reservation_details_model.dart';
import 'package:car_wash_mobile_app/features/user_planes/data/model/single_plan_info_model.dart';

class ProfilePackagesRespository {
  static Future<ApiResult<List<UserPlansModel>>> getMyPlans() async {
    return PackagesService.getMyPlans();
  }

  static Future<ApiResult<dynamic>> renewMyPlan({required int id}) async {
    return PackagesService.renewMyPlan(id: id);
  }

  static Future<ApiResult<List<AllPlansModel>>> getAllPlans() async {
    final allPlans = await PackagesService.getAllPlansService();
    return allPlans;
  }

  /// Added by amr Elnbawy
  /// date : 11/11/2024
  static Future<ApiResult<SinglePlanInfoModel>> getPlaninfo(
          {required int id}) async =>
      await PackagesService.getPlaninfo(id);

  static Future<ApiResult<bool>> makeReservation({
    required String planId,
    required List<ReservationDetailsModel> modelList,
  }) async =>
      await PackagesService.makeReservation(
          planId: planId, modelList: modelList);
}
