// Created by: Nadeen Mohamed 
// Created at date: 10/11/2024
// Create get all branches cubit to emit states and get all branches

import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/core/shared_pref/shared_pref.dart';
import 'package:car_wash_mobile_app/features/order_service/data/model/Branch_model/branch_model.dart';
import 'package:car_wash_mobile_app/features/order_service/logic/repo/get_branches_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_branches_state.dart';
part 'get_all_branches_cubit.freezed.dart';

class GetAllBranchesCubit extends Cubit<GetAllBranchesState> {
  GetAllBranchesCubit() : super(const GetAllBranchesState.initial());
  // Edited by:  Nadeen Mohamed
  // Edited at date: 21/11/2024
  // Edite note: use Future instead of void
  Future<void> getAllBranches() async {
  emit(const GetAllBranchesLoading());
  
  // Edited by: Nadeen Mohamed
  // Edited at date: 21/11/2024
  // Edite note: load branches from cache
  final cachedBranches = await SharedPref.instance.loadBranches();
  if (cachedBranches != null &&
      SharedPref.instance.isCacheValid(const Duration(hours: 24))) {
    emit(GetAllBranchesSuccess<List<BranchModel>>(cachedBranches));
    return;
  }
  
  // Edited by: Nadeen Mohamed
  // Edited at date: 21/11/2024
  // Edite note: Fetch from API if no valid cache
  final response = await GetAllBranchesRepo.getAllBranches();

  response.when(
    success: (allBranches) async {
      emit(GetAllBranchesSuccess<List<BranchModel>>(allBranches));
      // Edited by: Nadeen Mohamed
      // Edited at date: 21/11/2024
      // Edite note: Save branches to Cach
      await SharedPref.instance.saveBranches(allBranches); 
    },
    failure: (error) {
      emit(GetAllBranchesFailure(error: error));
    },
  );
}
}
