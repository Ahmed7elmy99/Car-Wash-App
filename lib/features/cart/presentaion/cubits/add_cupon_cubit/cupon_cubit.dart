import 'dart:developer';

import 'package:car_wash_mobile_app/core/models/cart/cart_model.dart';
import 'package:car_wash_mobile_app/core/models/cupon/cupon_model.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/core/utils/storage.dart';
import 'package:car_wash_mobile_app/features/cart/logic/add_cupon_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cupon_state.dart';
part 'cupon_cubit.freezed.dart';

class CuponCubit extends Cubit<CuponState> {
  CuponCubit() : super(const CuponState.initial());

  static CuponCubit get(context) => BlocProvider.of(context);

  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController cuponNumber = TextEditingController();
  CuponModel? cuponModel;
  CartItemModel? cartItemModel;
  double discountedPrice = 0.0; // Field to store the discounted price

  Future<void> applyCupon(double totalPrice) async {
    // Validate the form before applying the coupon
    if (formState.currentState?.validate() ?? false) {
      emit(const CuponState.loading());

      // Fetch the coupon data
      AddCuponRepository.applyCupon(cuponNumber: cuponNumber.text)
          .then((response) {
        response.when(
          success: (cuponData) {
            cuponModel = cuponData;
            calculateDiscountedPrice(totalPrice);
          },
          failure: (error) {
            emit(CuponState.error(error: error));
          },
        );
      });
    }
  }

  // Method to calculate the discounted total price based on the coupon model
  void calculateDiscountedPrice(double totalPrice) async {
    if (cuponModel != null) {
      if (cuponModel!.discountType == "ratio") {
        discountedPrice = totalPrice * (1 - cuponModel!.discountValue / 100);
      } else {
        discountedPrice = totalPrice - cuponModel!.discountValue;
      }
      await Storage.instance.storage
          .write(key: 'invoiceValue', value: discountedPrice.toString());
      log((await Storage.instance.storage.read(key: 'invoiceValue')) ??
          "invoice value is null.");
      emit(CuponState.success(discountedPrice: discountedPrice));
    }
  }
}
