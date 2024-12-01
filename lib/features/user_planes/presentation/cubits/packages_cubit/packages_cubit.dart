import 'package:car_wash_mobile_app/core/models/all_plans/all_plans_model.dart';
import 'package:car_wash_mobile_app/core/models/my_plans/user_plans_model.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/core/shared_pref/shared_pref.dart';
import 'package:car_wash_mobile_app/features/user_planes/data/model/single_plan_info_model.dart';
import 'package:car_wash_mobile_app/features/user_planes/logic/repo/profile_packages_respository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'packages_cubit.freezed.dart';
part 'packages_state.dart';

class PackagesCubit extends Cubit<PackagesState> {
  static PackagesCubit get(BuildContext context) =>
      BlocProvider.of<PackagesCubit>(context);

  List<UserPlansModel> packageList = [];

  List<AllPlansModel> allPlansList = [];

  AllPlansModel? planeInfo;

  PackagesCubit() : super(const PackagesState.initial());

  /// Retrieves the user's plans from the API and stores them in [packageList].
  ///
  /// This method emits [PackagesState.loading] while the API call is in progress.
  /// If the call is successful, it emits [PackagesSuccess] with [packageList] as the
  /// success value. If the call fails, it emits [PackagesState.failure] with the
  /// error as the failure value.
  void getUserPlans() async {
    emit(const PackagesState.loading());
    ProfilePackagesRespository.getMyPlans().then(
      (value) {
        value.when(success: (data) {
          packageList = data;

          //save user plans in shared pref to make check when getting all plans about if there
          //is a plan the user has subscribed in it
          SharedPref.instance.setUserPackageIds(
            data
                .map(
                  (userPlans) => userPlans.id.toString(),
                )
                .toList(),
          );
          emit(PackagesSuccess<List<UserPlansModel>>(data));
        }, failure: (error) {
          emit(PackagesState.failure(error));
        });
      },
    );
  }

  /// Renews the user's plan with the given ID.
  ///
  /// This method emits [PackagesState.loading] while the renewal process is in progress.
  /// If the renewal is successful, it emits [PackagesState.renewSuccess].
  /// If the renewal fails, it emits [PackagesState.renewFailure] with the error as the failure value.
  ///
  /// - Parameter [id]: The unique identifier of the plan to be renewed.
  void renewUserPlan({required int id}) async {
    emit(const PackagesState.renewLoading());
    ProfilePackagesRespository.renewMyPlan(id: id).then(
      (value) {
        value.when(
          success: (data) {
            emit(const PackagesState.renewSuccess());
          },
          failure: (error) {
            emit(PackagesState.renewFailure(error));
          },
        );
      },
    );
  }

  void getAllPlans() async {
    emit(const PackagesState.allPlansLoading());
    final response = await ProfilePackagesRespository.getAllPlans();
    response.when(
      success: (allPlans) {
        allPlansList = allPlans;
        emit(PackagesState.allPlansSuccess(allPlans));
      },
      failure: (error) {
        emit(PackagesState.allPlansError(error: error));
      },
    );
  }

  /// get the user's plan info with the given ID.
  /// Added by amr Elnbawy
  /// date : 11/11/2024
  /// This method emits [PackagesState.loading] while the plan info process is in progress.
  /// If the renewal is successful, it emits [PackagesState.renewSuccess].
  /// If the renewal fails, it emits [PackagesState.renewFailure] with the error as the failure value.
  ///
  /// - Parameter [id]: The unique identifier of the plan to be renewed.
  void getUserPlanInfo({required int id}) async {
    emit(const PackagesState.PlanInfoLoading());
    ProfilePackagesRespository.getPlaninfo(id: id).then(
      (value) {
        value.when(
          success: (data) {
            emit(PackagesState.PlanInfoSuccess(data));
          },
          failure: (error) {
            emit(PackagesState.PlanInfoError(error: error));
          },
        );
      },
    );
  }
}
