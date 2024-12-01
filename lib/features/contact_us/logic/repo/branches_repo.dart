
import 'package:car_wash_mobile_app/core/models/branches/branches_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/contact_us/data/api_services/branches_services.dart';

class BranchesRepo {
  ///TO GET BRANCHES DATA
  static Future<ApiResult<List<BranchesModel>>> getBranches() async {
    final branches = await BranchesApiServices.getBranchesServices();
    // log('$offers');
    return branches;
  }
}
