part of 'address_cubit.dart';

@freezed
class AddressState<T> with _$AddressState {
  const factory AddressState.initial() = _Initial;
  const factory AddressState.loading() = AddreessLoading;
  const factory AddressState.success(T addresses) = AddressSuccess<T>;
  const factory AddressState.failure({required ApiErrorHandler error}) =
      AddressFailure;
}
