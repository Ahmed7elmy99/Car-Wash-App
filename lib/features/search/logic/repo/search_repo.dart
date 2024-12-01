import 'package:car_wash_mobile_app/core/models/search/searchmodel.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/search/data/search_service.dart';

class SearchRepo {
  static Future<ApiResult<List<SearchModel>>> getSearch(
          String searchQuery) async =>
      await SearchService.getSearch(searchQuery);
}
