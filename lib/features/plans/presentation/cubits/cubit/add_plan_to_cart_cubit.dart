import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/profile/logic/repo/profile_add_plan_to_cart_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_plan_to_cart_cubit.freezed.dart';
part 'add_plan_to_cart_state.dart';

class AddPlanToCartCubit extends Cubit<AddPlanToCartState> {
  AddPlanToCartCubit() : super(const AddPlanToCartState.initial());
  Future<void> addToCart({
    required dynamic planId,
  }) async {
    emit(const AddPlanToCartLoading());
    final response = await AddPlanToCartRepository.addToCart(planId: planId);

    response.when(success: (addedItem) {
      emit(AddPlanToCartSuccess(addedItem));
    }, failure: (error) {
      emit(AddPlanToCartFailure(error: error));
    });
  }
}
