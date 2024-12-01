// Created by: Nadeen Mohamed
// Created at date: 10/11/2024
// Create get all branches repo which use GetAllBranchesService to get all branches

import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/order_service/data/api_services/get_all_branches_service.dart';
import 'package:car_wash_mobile_app/features/order_service/data/model/Branch_model/branch_model.dart';

class GetAllBranchesRepo {
  static Future<ApiResult<List<BranchModel>>> getAllBranches() async {
    final allBranches = await GetAllBranchesService.getAllBranches();
    return allBranches;
  }
}
