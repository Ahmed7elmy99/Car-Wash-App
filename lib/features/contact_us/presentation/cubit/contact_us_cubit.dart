import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/contact_us/logic/repo/contact_us_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_us_state.dart';
part 'contact_us_cubit.freezed.dart';

class ContactUsCubit extends Cubit<ContactUsState> {
  static ContactUsCubit get(context) => BlocProvider.of(context);

  String countryCode = "";

  ContactUsCubit() : super(const ContactUsState.initial());

  void sendMessage({
    required dynamic fullName,
    required dynamic message,
    required dynamic mobile,
    required dynamic email,
  }) async {
    emit(const ContactUsLoading());
    final response = await ContactUsRepo.sendMessage(
        fullName: fullName,
        email: email,
        mobile: (countryCode + mobile).substring(1),
        message: message);

    response.when(success: (messageData) {
      emit(ContactUsSuccess(messageData));
    }, failure: (error) {
      emit(ContactUsError(error: error));
    });
  }
}
