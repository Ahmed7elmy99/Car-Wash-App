part of 'offer_cubit.dart';

@freezed
class OfferState<T> with _$OfferState {
  const factory OfferState.offerInitial() = OfferInitial;
  const factory OfferState.offerLoading() = OfferLoading;
  const factory OfferState.offerSuccess(T offer) = OfferSuccess<T>;
  const factory OfferState.offerError({required ApiErrorHandler error}) =
      OfferError;
}
