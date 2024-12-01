import '../../../../core/constants/app_strings.dart';
import '../../../../core/network/api_call_handler.dart';
import '../../../../core/network/api_result.dart';
import '../../../../core/network/dio_config.dart';
import 'package:dio/dio.dart';

class NotificationApiServices {
  static final Dio _dio = DioConfig.getDio();

  static Future<ApiResult> getNotificationPage({
    int page = 1,
    required dynamic Function({required dynamic data}) parser,
  }) async =>
      await ApiCallHandler.handleApiCall(
        apiCall: () => _dio.get(AppStrings.notifications,
            queryParameters: {"page": page.toString()}),
        parser: parser,
      );
}
