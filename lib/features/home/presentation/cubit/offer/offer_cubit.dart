import 'package:car_wash_mobile_app/core/models/offers/offers_model.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/home/logic/repo/offers_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_state.dart';
part 'offer_cubit.freezed.dart';

class OfferCubit extends Cubit<OfferState> {
  OfferCubit() : super(const OfferState.offerInitial());

  void getOffers() async {
    emit(const OfferLoading());
    final response = await OffersRepo.getOffers();

    response.when(
      success: (offers) {
        emit(OfferSuccess<List<OffersModel>>(offers));
      },
      failure: (error) {
        emit(OfferError(error: error));
      },
    );
  }
}
