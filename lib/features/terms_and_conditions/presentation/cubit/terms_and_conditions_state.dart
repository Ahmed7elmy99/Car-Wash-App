part of 'terms_and_conditions_cubit.dart';

// start: created by helmy
//creat At Date (26/10/2024)
@freezed
class TermsAndConditionsState with _$TermsAndConditionsState {
  const factory TermsAndConditionsState.initial() =
      TermsAndConditionInitialState;

  const factory TermsAndConditionsState.loading() =
      TermsAndConditionLoadingState;

  const factory TermsAndConditionsState.success() =
      TermsAndConditionSuccessState;

  const factory TermsAndConditionsState.error(
      {required ApiErrorHandler error}) = TermsAndConditionErrorState;
}
