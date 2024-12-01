import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/add_new_address/data/service/edit_address_service.dart';

class EditAddressRepo {
  static Future<ApiResult<AddressModel>> editAddress({
    required int id,
    required String nameAddress,
    required String region,
    required String city,
    required String street,
    required String neighborhood,
  }) async {
    return await EditAddressService.editAddress(
      id: id,
      nameAddress: nameAddress,
      city: city,
      neighborhood: neighborhood,
      region: region,
      street: street,
    );
  }
}
