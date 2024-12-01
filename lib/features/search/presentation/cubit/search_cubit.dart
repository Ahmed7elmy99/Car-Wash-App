import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/search/logic/repo/search_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState.initial());

  void getSearch(String searchQuery) async {
    emit(const SearchLoading());
    final response = await SearchRepo.getSearch(searchQuery);
    response.when(
      success: (searchList) => emit(SearchSuccess(searchList)),
      failure: (error) => emit(Searchfailure(error: error)),
    );
  }
}
