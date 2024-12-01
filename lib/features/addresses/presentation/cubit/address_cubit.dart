// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/features/addresses/data/delete_address_service.dart';
import 'package:car_wash_mobile_app/features/addresses/data/set_address_as_default.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/addresses/logic/repo/address_repo.dart';

part 'address_cubit.freezed.dart';
part 'address_state.dart';

/// This method retrieves a list of addresses from a data source
/// and updates the state of the AddressCubit accordingly.

// Edited by: Nadeen Mohamed
// Edited at date: 24/11/2024
// Edite note: Change the AddressCubit to the old version before 21/11/2024
class AddressCubit extends Cubit<AddressState> {
  late List<AddressModel> addresses;
  AddressCubit() : super(const AddressState.initial());
  void getAddresses() async {
    emit(const AddreessLoading());
    final response = await AddressRepo.getAddresses();
    response.when(
      success: (addresses) {
        emit(AddressSuccess(addresses));
      },
      failure: (error) {
        emit(AddressFailure(error: error));
      },
    );
  }

  void deleteAddress(int id) async {
    try {
      emit(const AddreessLoading());
      await DeleteAddressService.delteAddress(id: id);
      final response = await AddressRepo.getAddresses();
      response.when(
        success: (addresses) {
          emit(AddressSuccess(addresses));
        },
        failure: (error) {
          emit(AddressFailure(error: error));
        },
      );
    } catch (e) {
      log(e.toString());
    }
  }

  void setAddressAsDefault(int id) async {
    try {
      emit(const AddreessLoading());
      await SetAddressAsDefaultService.setAddressAsDefault(id: id);
      final response = await AddressRepo.getAddresses();
      response.when(
        success: (addresses) {
          emit(AddressSuccess(addresses));
        },
        failure: (error) {
          emit(AddressFailure(error: error));
        },
      );
    } catch (e) {
      log(e.toString());
    }
  }
}
