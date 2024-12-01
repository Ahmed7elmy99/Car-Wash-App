import 'package:bloc/bloc.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/add_new_address/logic/repo/add_new_address_repo.dart';
import 'package:car_wash_mobile_app/features/add_new_address/logic/repo/edit_address_repo.dart';
import 'package:car_wash_mobile_app/features/addresses/logic/repo/address_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_new_address_state.dart';
part 'add_new_address_cubit.freezed.dart';

class AddNewAddressCubit extends Cubit<AddNewAddressState> {
  AddNewAddressCubit() : super(const AddNewAddressState.initial());

  // Method to edit address with details from text fields
  void addNewAddress({
    required String nameAddress,
    required String region,
    required String city,
    required String street,
    required String neighborhood,
  }) async {
    emit(const AddNewAddressLoading());

    await AddNewAddressRepo.addNewAddress(
      nameAddress: nameAddress,
      region: region,
      city: city,
      street: street,
      neighborhood: neighborhood,
    );
    final response = await AddressRepo.getAddresses();
    response.when(
      success: (address) {
        emit(const AddNewAddressSuccess());
      },
      
      failure: (error) {
        emit(AddNewAddressFailure(error: error));
      },
    );
  }

  void updateAddress({
    required int id,
    required String nameAddress,
    required String region,
    required String city,
    required String street,
    required String neighborhood,
  }) async {
    emit(const AddNewAddressLoading());

    await EditAddressRepo.editAddress(
      id: id,
      nameAddress: nameAddress,
      region: region,
      city: city,
      street: street,
      neighborhood: neighborhood,
    );
    final response = await AddressRepo.getAddresses();
    response.when(
      success: (address) {
        emit(const AddNewAddressSuccess());
      },
      failure: (error) {
        emit(AddNewAddressFailure(error: error));
      },
    );
  }
}
