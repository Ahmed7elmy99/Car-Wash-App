import 'package:car_wash_mobile_app/core/models/service_details/service_details_model.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/service_details/logic/repo/service_details_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_details_state.dart';
part 'service_details_cubit.freezed.dart';

// start: created by helmy
//creat At Date (30/10/2024)
//created : service details cubit for handling state management
class ServiceDetailsCubit extends Cubit<ServiceDetailsState> {
  ServiceDetailsCubit() : super(const ServiceDetailsState.initial());
  static ServiceDetailsCubit get(context) => BlocProvider.of(context);
  List<ServiceDetailsModel> serviceDetailsModel = [];
  Future<void> getServiceDetails() async {
    emit(const serviceDetailsLoadingState());
    ServiceDetailsRepository.getServiceDetails().then(
      (value) {
        value.when(
          success: (serviceDetailsList) {
            serviceDetailsModel = serviceDetailsList;
            print(serviceDetailsModel);
            emit(const serviceDetailsSuccessState());
          },
          failure: (error) {
            emit(serviceDetailsErrorState(error: error));
          },
        );
      },
    );
  }
}
