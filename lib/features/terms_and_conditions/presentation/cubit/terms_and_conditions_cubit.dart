import 'package:car_wash_mobile_app/core/models/terms_conditions/terms_conditions_model.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/terms_and_conditions/logic/repo/terms_and_conditions_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_and_conditions_state.dart';
part 'terms_and_conditions_cubit.freezed.dart';

// start: created by helmy
//creat At Date (28/10/2024)
//created : Terms and conditions cubit for handling state management
class TermsAndConditionsCubit extends Cubit<TermsAndConditionsState> {
  TermsAndConditionsCubit() : super(const TermsAndConditionsState.initial());
  static TermsAndConditionsCubit get(context) => BlocProvider.of(context);
  TermsModel? termsModel;
  void getTermsAndConditions() async {
    emit(const TermsAndConditionLoadingState());
    TermsAndConditionsRepository.getTermsAndConditions().then(
      (value) {
        value.when(
          success: (terms) {
            termsModel = terms;
            emit(const TermsAndConditionSuccessState());
          },
          failure: (error) {
            emit(TermsAndConditionErrorState(error: error));
          },
        );
      },
    );
  }
}
