import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/add_new_address/data/service/add_new_addresses_service.dart';

class AddNewAddressRepo {
  static Future<ApiResult<AddressModel>> addNewAddress({
    required String nameAddress,
    required String region,
    required String city,
    required String street,
    required String neighborhood,
  }) async {
    return await AddNewAddressService.addNewAddress(
      nameAddress: nameAddress,
      city: city,
      neighborhood: neighborhood,
      region: region,
      street: street,
    );
  }
}
