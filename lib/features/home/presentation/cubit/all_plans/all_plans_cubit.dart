import 'package:car_wash_mobile_app/core/models/all_plans/all_plans_model.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/home/logic/repo/all_plans_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'all_plans_state.dart';
part 'all_plans_cubit.freezed.dart';

class AllPlansCubit extends Cubit<AllPlansState> {
  AllPlansCubit() : super(const AllPlansState.allPlansInitial());

  void getAllPlans() async {
    emit(const AllPlansLoading());

    final response = await AllPlansRepo.getAllPlans();

    response.when(
      success: (allPlans) {
        emit(AllPlansSuccess<List<AllPlansModel>>(allPlans));
      },
      failure: (error) {
        emit(AllPlansError(error: error));
      },
    );
  }
}
