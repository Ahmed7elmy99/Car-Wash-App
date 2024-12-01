import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/core/utils/storage.dart';
import 'package:car_wash_mobile_app/features/settings/logic/repo/logout_repo.dart';
import 'package:car_wash_mobile_app/features/sign_in/presentation/screens/sign_in_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'logout_state.dart';
part 'logout_cubit.freezed.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit() : super(const LogoutState.initial());

  void userLogout() async {
    emit(const LogoutStateLoading());
    final response = await LogoutRepo.logout();
    response.when(success: (logoutUser) async {
      await Storage.instance.storage.delete(key: 'token');
      await Storage.instance.storage.delete(key: 'refreshToken');
      var prefs = await SharedPreferences.getInstance();
      prefs.clear();
      emit(LogoutStateSuccess(logoutUser));
    }, failure: (error) {
      emit(LogoutStateError(error: error));
    });
  }
}
