import 'package:bloc/bloc.dart';
import 'package:car_wash_mobile_app/core/models/additional_product/additional_product_model.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/all_additional_products/logic/repo/all_additional_products_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_additional_products_state.dart';
part 'all_additional_products_cubit.freezed.dart';

class AllAdditionalProductsCubit extends Cubit<AllAdditionalProductsState> {
  AllAdditionalProductsCubit()
      : super(const AllAdditionalProductsState.allProductInitial());

  void getAllProducts() async {
    emit(const AllProductLoading());
    final response = await AllAdditionalProductsRepo.getAllAdditionalProducts();

    response.when(
      success: (allProducts) {
        emit(AllProductSuccess<List<AdditionalProductModel>>(allProducts));
      },
      failure: (error) {
        emit(AllProductError(error: error));
      },
    );
  }
}
