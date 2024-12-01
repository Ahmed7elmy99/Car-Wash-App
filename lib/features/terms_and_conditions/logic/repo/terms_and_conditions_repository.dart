import 'package:car_wash_mobile_app/core/models/terms_conditions/terms_conditions_model.dart';
import 'package:car_wash_mobile_app/core/network/api_result.dart';
import 'package:car_wash_mobile_app/features/terms_and_conditions/data/api_services/terms_conditions_service.dart';

// start: created by helmy
//creat At Date (28/10/2024)
// created : terms and conditions repo
class TermsAndConditionsRepository {
  static Future<ApiResult<TermsModel>> getTermsAndConditions() async {
    return TermsAndConditionsService.termsAndConditions();
  }
}
