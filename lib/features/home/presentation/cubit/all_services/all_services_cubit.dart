import 'package:car_wash_mobile_app/core/models/all_services_model/all_services_model.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/home/logic/repo/all_services_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_services_state.dart';
part 'all_services_cubit.freezed.dart';

class AllServicesCubit extends Cubit<AllServicesState> {
  AllServicesCubit() : super(const AllServicesState.allServiceInitial());

  void getAllService() async {
    emit(const AllServicesLoading());
    final response = await AllServicesRepo.getAllServices();

    response.when(
      success: (allServices) {
        emit(AllServicesSuccess<List<AllServicesModel>>(allServices));
      },
      failure: (error) {
        emit(AllServicesError(error: error));
      },
    );
  }
}
