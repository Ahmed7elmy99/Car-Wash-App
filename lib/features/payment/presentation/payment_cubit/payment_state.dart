part of 'payment_cubit.dart';

@freezed
class PaymentState<T> with _$PaymentState<T> {
  const factory PaymentState.initial() = _Initial;
  const factory PaymentState.payemntOptionsLoading() = PaymentWaysLoading;
  const factory PaymentState.loading() = PaymentLoading;
  const factory PaymentState.fetchPaymentWaysSuccess(T paymentWaysList) =
      FetchPaymentWaysSuccess<T>;
  const factory PaymentState.success() = PaymentSuccess;
  const factory PaymentState.failure(ApiErrorHandler handler) = PaymentFailure;
  const factory PaymentState.showPaymentOptionsList() = ShowPaymentOptionsList;
  const factory PaymentState.hidePaymentOptionsList() = HidePaymentOptionsList;
}
