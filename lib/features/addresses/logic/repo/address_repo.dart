import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/addresses/data/get_address_service.dart';

// Edited by: Nadeen Mohamed
// Edited at date: 24/11/2024
// Edite note: Change the AddressCubit to the old version before 21/11/2024 
class AddressRepo {
  static Future<ApiResult<List<AddressModel>>> getAddresses() async =>
      await AddressService.getAddresses();
}
