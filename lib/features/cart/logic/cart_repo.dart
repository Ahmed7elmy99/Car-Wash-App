// Created by: Nadeen Mohamed
// Created at date: 27/10/2024
// This repo for cart
import 'dart:developer';
import 'package:car_wash_mobile_app/core/models/cart/cart_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/cart/data/api_service/cart_service.dart';

class CartRepo {
  static Future<ApiResult<CartItemModel>> getCartItems() async {
    final cartItems = await ShowCartService.getCartItems();
    log('Parsed Cart Items: $cartItems');
    return cartItems;
  }
}
