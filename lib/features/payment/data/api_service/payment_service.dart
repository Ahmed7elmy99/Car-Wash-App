import 'package:car_wash_mobile_app/core/constants/app_strings.dart';
import 'package:car_wash_mobile_app/core/models/order_model.dart';
import 'package:car_wash_mobile_app/core/models/payment/payment_way_model.dart';
import 'package:car_wash_mobile_app/core/network/api_call_handler.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/core/network/dio_config.dart';
import 'package:dio/dio.dart';

class PaymentService {
  static final Dio _dio = DioConfig.getDio();
  static Future<ApiResult<List<PaymentWayModel>>> getPaymentMethods() async {
    return ApiCallHandler.handleApiCall<List<PaymentWayModel>>(
      apiCall: () {
        return _dio.get(AppStrings.paymentWay);
      },
      parser: ({required data}) {
        return (data['data'] as List<dynamic>)
            .map((paymentWay) => PaymentWayModel.fromJson(paymentWay))
            .toList();
      },
    );
  }

  static Future<ApiResult<OrderModel>> createOrder() {
    return ApiCallHandler.handleApiCall(
      apiCall: () {
        return _dio.post(AppStrings.createOrder);
      },
      parser: ({required data}) {
        return OrderModel.fromJson(data["data"]);
      },
    );
  }

  static Future<ApiResult<void>> cashOnDelivery(int orderId) {
    return ApiCallHandler.handleApiCallWithoutParser(
      apiCall: () {
        return _dio.post(AppStrings.cashOnDelivery + orderId.toString());
      },
    );
  }

  static Future<ApiResult<void>> myFatoraahSuccess(int paymentId) {
    return ApiCallHandler.handleApiCallWithoutParser(
      apiCall: () {
        return _dio.get(
          AppStrings.myFatoorahSuccess,
          queryParameters: {
            'paymentId': paymentId,
            "Id": paymentId,
          },
        );
      },
    );
  }

  static Future<ApiResult<void>> myFatoraahError(int paymentId) {
    return ApiCallHandler.handleApiCallWithoutParser(
      apiCall: () {
        return _dio.get(
          AppStrings.myFatooraherror,
          queryParameters: {
            'paymentId': paymentId,
            "Id": paymentId,
          },
        );
      },
    );
  }
}
