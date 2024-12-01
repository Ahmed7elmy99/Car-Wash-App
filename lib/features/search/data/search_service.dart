import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/search/searchmodel.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';

class SearchService {
  static final Dio _dio = DioConfig.getDio();

  static Future<ApiResult<List<SearchModel>>> getSearch(
      String searchQuery) async {
    return ApiCallHandler.handleApiCall<List<SearchModel>>(apiCall: () {
      return _dio.get(AppStrings.search,
          queryParameters: {'type': 'product', 'search': searchQuery});
    }, parser: ({required data}) {
      print(data['data']['products']);
      return (data['data']['products'] as List)
          .map((e) => SearchModel.fromJson(e as Map<String, dynamic>))
          .toList();
    });
  }
}
