import 'package:car_wash_mobile_app/core/models/order_model.dart';
import 'package:car_wash_mobile_app/core/models/payment/payment_way_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/payment/data/api_service/payment_service.dart';

class PaymentRepository {
  static Future<ApiResult<List<PaymentWayModel>>> getPaymentWays() {
    return PaymentService.getPaymentMethods();
  }

  static Future<ApiResult<OrderModel>> createOrder() {
    return PaymentService.createOrder();
  }

  static Future<ApiResult<void>> cashOnDelivery(int orderId) {
    return PaymentService.cashOnDelivery(orderId);
  }

  static Future<ApiResult<void>> myFatoraahSuccess(int paymentId) {
    return PaymentService.myFatoraahSuccess(paymentId);
  }

  static Future<ApiResult<void>> myFatoraahError(int paymentId) {
    return PaymentService.myFatoraahError(paymentId);
  }
}
