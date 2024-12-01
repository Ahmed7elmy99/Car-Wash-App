part of 'search_cubit.dart';

@freezed
class SearchState<T> with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = SearchLoading;
  const factory SearchState.success(T searchList) = SearchSuccess<T>;
  const factory SearchState.failure({required ApiErrorHandler error}) = Searchfailure;
}
