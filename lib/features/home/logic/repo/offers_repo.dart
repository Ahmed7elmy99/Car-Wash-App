
import 'package:car_wash_mobile_app/core/models/offers/offers_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/home/data/api_services/offers_services.dart';

class OffersRepo {
  ///TO GET OFFERS DATA
  static Future<ApiResult<List<OffersModel>>> getOffers() async {
    final offers = await OffersApiServices.getOffersServices();
    // log('$offers');
    return offers;
  }
}
