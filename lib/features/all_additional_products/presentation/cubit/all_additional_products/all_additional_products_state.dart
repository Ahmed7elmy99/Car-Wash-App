part of 'all_additional_products_cubit.dart';

@freezed
class AllAdditionalProductsState<T> with _$AllAdditionalProductsState {
  const factory AllAdditionalProductsState.allProductInitial() =
      AllProductInitial;
  const factory AllAdditionalProductsState.allProductLoading() =
      AllProductLoading;
  const factory AllAdditionalProductsState.allProductSuccess(T allProducts) =
      AllProductSuccess<T>;
  const factory AllAdditionalProductsState.allProductError(
      {required ApiErrorHandler error}) = AllProductError;
}
