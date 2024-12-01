// Created by: Nadeen Mohamed
// Created at date: 10/11/2024
// Create get all branches states 

part of 'get_all_branches_cubit.dart';

@freezed
class GetAllBranchesState<T> with _$GetAllBranchesState<T> {
  const factory GetAllBranchesState.initial() = _Initial;
  const factory GetAllBranchesState.loading() = GetAllBranchesLoading;
  const factory GetAllBranchesState.success(T branches) = GetAllBranchesSuccess<T>;
  const factory GetAllBranchesState.failure({required ApiErrorHandler error}) = GetAllBranchesFailure;
}
