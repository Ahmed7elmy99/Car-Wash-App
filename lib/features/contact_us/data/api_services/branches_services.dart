import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/branches/branches_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class BranchesApiServices {
  static final Dio _dio = DioConfig.getDio();

  ///TO GET BRANCHES DATA
  static Future<ApiResult<List<BranchesModel>>> getBranchesServices() {
    return ApiCallHandler.handleApiCall(apiCall: () {
      _dio.options.headers.addAll({
        'Accept-Language': Get.locale!.languageCode,
      });
      return _dio.get(AppStrings.branchs);
    }, parser: ({required data}) {
      print('Raw API Response: $data'); // Log the raw API response
      if (data == null || data['data'] == null) {
        print('No branches found in API response');
        return [];
      }
      List branchesData = data['data'];
      return branchesData
          .map((branchesJson) => BranchesModel.fromJson(branchesJson))
          .toList();
    });
  }
}
