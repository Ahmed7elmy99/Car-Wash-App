// Created by: Nadeen Mohamed
// Created at date: 27/10/2024
// Create show cart items state
part of 'show_cart_items_cubit.dart';

@freezed
class ShowCartItemsState<T> with _$ShowCartItemsState {
  const factory ShowCartItemsState.initial() = _Initial;
  const factory ShowCartItemsState.loading() = ShowCartItemsLoading;

  // Add total price parameter by Omnia Mohamed [7/11/2024]
  const factory ShowCartItemsState.success(T cartItems, {int? totalPrice}) = ShowCartItemsSuccess<T>;

  const factory ShowCartItemsState.failure({required ApiErrorHandler error}) = ShowCartItemsFailure;
}
