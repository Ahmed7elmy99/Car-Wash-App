// Created by: Nadeen Mohamed
// Created at date: 10/11/2024
// Create get all branches service which get all branches from endPoint called (/branchs)

import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:car_wash_mobile_app/features/order_service/data/model/Branch_model/branch_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';


class GetAllBranchesService 
{
  static final Dio _dio = DioConfig.getDio();
  static Future<ApiResult<List<BranchModel>>> getAllBranches()
  {
    return ApiCallHandler.handleApiCall(apiCall: () {
      _dio.options.headers.addAll({
        'Accept-Language': Get.locale!.languageCode,
      });
      return _dio.get(AppStrings.branchs);
    }, parser: ({required data}) {
      print('Raw API Response: $data'); // Log the raw API response
      if (data == null || data['data'] == null) {
        print('No Branches found in API response');
        return [];
      }
      List branchs = data['data'];
      return branchs
          .map((branchesJson) =>
              BranchModel.fromJson(branchesJson))
          .toList();
    }
    );
  }
}