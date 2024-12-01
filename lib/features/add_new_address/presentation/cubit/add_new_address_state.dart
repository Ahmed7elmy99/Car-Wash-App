part of 'add_new_address_cubit.dart';

@freezed
class AddNewAddressState with _$AddNewAddressState {
  const factory AddNewAddressState.initial() = _Initial;
  const factory AddNewAddressState.loading() = AddNewAddressLoading;
  const factory AddNewAddressState.success() = AddNewAddressSuccess;
  const factory AddNewAddressState.failes({required ApiErrorHandler error}) =
      AddNewAddressFailure;
}
