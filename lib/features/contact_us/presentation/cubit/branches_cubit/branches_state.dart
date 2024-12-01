part of 'branches_cubit.dart';

@freezed
class BranchesState<T> with _$BranchesState {
  const factory BranchesState.branchesInitial() = GetBranchesInitial;
  const factory BranchesState.branchesLoading() = GetBranchesLoading;
  const factory BranchesState.branchesSuccess(T branch) = GetBranchesSuccess<T>;
  const factory BranchesState.branchesError({required ApiErrorHandler error}) =
  GetBranchesError;
}