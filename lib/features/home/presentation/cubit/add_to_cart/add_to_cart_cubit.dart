import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/home/logic/repo/add_to_cart_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart_state.dart';
part 'add_to_cart_cubit.freezed.dart';

class AddToCartCubit extends Cubit<AddToCartState> {
  AddToCartCubit() : super(const AddToCartState.initial());

  Future<void> addToCart({
    required dynamic planId,
  }) async {
    emit(AddToCartState.loading(planId:planId));
    final response = await AddToCartRepo.addToCart(planId: planId);

    response.when(success: (addedItem) {
      emit(AddToCartSuccess(addedItem));
    }, failure: (error) {
      emit(AddToCartError(error: error));
    });
  }
}
