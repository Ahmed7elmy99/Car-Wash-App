import 'package:car_wash_mobile_app/core/models/branches/branches_model.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/contact_us/logic/repo/branches_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'branches_state.dart';
part 'branches_cubit.freezed.dart';

class BranchesCubit extends Cubit<BranchesState> {
  BranchesCubit() : super(const BranchesState.branchesInitial());


  void getBranchData() async {
    emit(const GetBranchesLoading());
    final response = await BranchesRepo.getBranches();

    response.when(
      success: (branch) {
        emit(GetBranchesSuccess<List<BranchesModel>>(branch));
      },
      failure: (error) {
        emit(GetBranchesError(error: error));
      },
    );
  }
}
