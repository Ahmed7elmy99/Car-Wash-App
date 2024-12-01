import 'dart:developer';

import 'package:car_wash_mobile_app/core/models/order_model.dart';
import 'package:car_wash_mobile_app/core/models/payment/payment_way_model.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/core/utils/storage.dart';
import 'package:car_wash_mobile_app/features/payment/logic/repo/payment_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:myfatoorah_flutter/myfatoorah_flutter.dart';

part 'payment_cubit.freezed.dart';
part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  static PaymentCubit get(context) => BlocProvider.of<PaymentCubit>(context);
  PaymentCubit() : super(const PaymentState.initial());
  late PaymentWayModel? chosenWay;

  String? apiKey = dotenv.env['APIKey'];
  List<PaymentWayModel> paymentOptionsList = [
    PaymentWayModel(
      id: 1000,
      createdAt: "2024-11-22T00:00:00Z", // Example timestamp
      updatedAt: "2024-11-22T00:00:00Z", // Example timestamp
      isActive: 1, // Assuming '1' indicates active
      paymentMethodId: 1000,
      paymentMethodAr: "الدفع عند الوصول", // Arabic for "Cash Payment"
      paymentMethodEn: "Cash Payment",
      paymentMethodCode: "CASH",
      isDirectPayment: 1, // Assuming '1' indicates it's direct
      serviceCharge: "0.00", // No service charge for cash payment
      totalAmount: "0.00", // No initial amount
      currencyIso: null, // Assuming no specific currency
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXA6FZL8wM0kcy5psNNSG5oZGr69XCEdq-DA&s", // Placeholder image URL
      isEmbeddedSupported: 0, // Assuming '0' means no embedded support
      paymentCurrencyIso: "USD", // Example currency ISO
    ),
  ];

  void initPayment() {
    MFSDK.init(
      apiKey!, // Replace with your API Key
      MFCountry.SAUDIARABIA, // Set the country
      MFEnvironment.TEST, // Use MFEnvironment.LIVE for production
    );
  }

  void getPaymentWays() {
    chosenWay = paymentOptionsList.first;
    emit(const PaymentWaysLoading());
    PaymentRepository.getPaymentWays().then(
      (value) {
        value.when(
          success: (paymentWaysList) {
            paymentOptionsList.addAll(paymentWaysList);
            emit(FetchPaymentWaysSuccess<List<PaymentWayModel>>(
                paymentWaysList));
          },
          failure: (error) {
            emit(PaymentFailure(error));
          },
        );
      },
    );
  }

  Future<void> createOrderAndPay(BuildContext context) async {
    return PaymentRepository.createOrder().then(
      (value) {
        value.when(
          success: (data) {},
          failure: (error) {
            emit(PaymentFailure(error));
          },
        );
      },
    );
  }

  executePayment(BuildContext context) async {
    emit(const PaymentState.loading());
    OrderModel? orderModel;
    await PaymentRepository.createOrder().then(
      (value) {
        value.when(
          success: (data) {
            orderModel = data;
          },
          failure: (error) {
            emit(PaymentFailure(error));
          },
        );
      },
    );
    if (chosenWay!.id == 1000 && orderModel != null) {
      PaymentRepository.cashOnDelivery(orderModel!.id).then(
        (value) {
          value.when(
            success: (data) {
              emit(const PaymentSuccess());
            },
            failure: (error) {
              emit(PaymentFailure(error));
            },
          );
        },
      );
    } else {
      String? invoiceValueStr = await getInvoiceValue();
      num invoiceValue = 0;
      if (invoiceValueStr != null) {
        invoiceValue = num.parse(invoiceValueStr);
      }
      String? name = await getUserName();
      String? email = await getUserEmail();
      String? mobileNumber = await getUserMobileNumber();
      if (mobileNumber!.startsWith("2")) {
        mobileNumber = mobileNumber.substring(1);
      }
      String? userId = await getUserId();
      MFExecutePaymentRequest request =
          MFExecutePaymentRequest(invoiceValue: invoiceValue);
      setRequestFields(request, name, mobileNumber, email, userId, orderModel);
      String language = getMFLanguage();
      MFGetPaymentStatusResponse getPaymentStatusResponse =
          await MFSDK.executePayment(request, language, (invoiceId) {
        log("invoice Id --------> $invoiceId");
      });
      // .catchError((error) {
      //   emit(
      //     PaymentFailure(
      //       ApiErrorHandler(
      //         statusCode: 400,
      //         statusMessage: error.message,
      //         success: false,
      //       ),
      //     ),
      //   );
      //   return error;
      // });
      log("--------------> MFGetPaymentStatusResponse");
      print(getPaymentStatusResponse.toString());
      if (context.mounted && name != null) {
        sendPayment(invoiceValue, name);
      }
    }
  }

  Future<String?> getInvoiceValue() async =>
      await Storage.instance.storage.read(key: 'invoiceValue');

  sendPayment(num invoiceValue, String customerName) async {
    MFSendPaymentRequest request = MFSendPaymentRequest();
    request.customerName = customerName;
    request.invoiceValue = invoiceValue;
    request.notificationOption = MFNotificationOption.EMAIL;
    MFSendPaymentResponse response = await MFSDK.sendPayment(request, 'ar');
    log(response.toJson().toString());
    //     .catchError((error) {
    //   emit(
    //     PaymentFailure(
    //       ApiErrorHandler(
    //         statusCode: 400,
    //         statusMessage: error.message,
    //         success: false,
    //       ),
    //     ),
    //   );
    // })
    

  }

  /// Reads the user id from the storage.
  ///
  /// Returns the user id as a string if the storage contains the key 'userId',
  /// otherwise returns null.
  Future<String?> getUserId() async =>
      await Storage.instance.storage.read(key: 'userId');

  /// Reads the user mobile number from the storage.
  ///
  /// Returns the user mobile number as a string if the storage contains the key
  /// 'userMobileNumber', otherwise returns null.
  Future<String?> getUserMobileNumber() async =>
      await Storage.instance.storage.read(key: 'userMobileNumber');

  /// Reads the user email from the storage.
  ///
  /// Returns the user email as a string if the storage contains the key
  /// 'userEmail', otherwise returns null.
  Future<String?> getUserEmail() async =>
      await Storage.instance.storage.read(key: 'userEmail');

  /// Reads the user name from the storage.
  ///
  /// Returns the user name as a string if the storage contains the key
  /// 'userName', otherwise returns null.
  Future<String?> getUserName() async =>
      await Storage.instance.storage.read(key: 'userName');

  /// Sets the required fields of the [MFExecutePaymentRequest] instance.
  ///
  /// The following fields are set:
  ///
  /// - [MFExecutePaymentRequest.paymentMethodId] is set to [chosenWay]'s
  ///   [PaymentWay.paymentMethodId].
  ///
  /// - [MFExecutePaymentRequest.customerName] is set to [name].
  ///
  /// - [MFExecutePaymentRequest.customerMobile] is set to [mobileNumber].
  ///
  /// - [MFExecutePaymentRequest.customerEmail] is set to [email].
  ///
  /// - [MFExecutePaymentRequest.userDefinedField] is set to [userId].
  ///
  /// - [MFExecutePaymentRequest.customerReference] is set to [orderModel]'s id
  ///   as a string.
  void setRequestFields(
      MFExecutePaymentRequest request,
      String? name,
      String mobileNumber,
      String? email,
      String? userId,
      OrderModel? orderModel) {
    request.mobileCountryCode = "966";
    request.paymentMethodId = chosenWay!.paymentMethodId;
    request.customerName = name;
    request.customerMobile = mobileNumber;
    request.customerEmail = email;
    request.userDefinedField = userId;
    request.customerReference = orderModel!.id.toString();
  }

/*************  ✨ Codeium Command ⭐  *************/
  /// Returns the appropriate MF language code based on the current locale.
  ///
  /// If the locale's language code is 'ar', it returns [MFLanguage.ARABIC],
  /// otherwise, it defaults to [MFLanguage.ENGLISH].
/******  32d6c62d-10bd-4c5a-9c2a-f3b9072b935e  *******/
  String getMFLanguage() {
    String language = Get.locale!.languageCode == 'ar'
        ? MFLanguage.ARABIC
        : MFLanguage.ENGLISH;
    return language;
  }
}
