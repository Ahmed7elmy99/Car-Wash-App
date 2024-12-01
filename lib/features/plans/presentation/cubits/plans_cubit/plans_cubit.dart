import 'package:car_wash_mobile_app/core/models/all_plans/all_plans_model.dart';
import 'package:car_wash_mobile_app/core/models/my_plans/user_plans_model.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/core/shared_pref/shared_pref.dart';
import 'package:car_wash_mobile_app/features/user_planes/logic/repo/profile_packages_respository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_state.dart';
part 'plans_cubit.freezed.dart';

class PlansCubit extends Cubit<PlansState> {
  static PlansCubit get(BuildContext context) =>
      BlocProvider.of<PlansCubit>(context);
  late List<UserPlansModel> packageList;
  late List<AllPlansModel> allPlansList;
  PlansCubit() : super(const PlansState.plansInitial());

  /// Retrieves the user's plans from the API and stores them in [packageList].
  ///
  /// This method emits [PackagesState.loading] while the API call is in progress.
  /// If the call is successful, it emits [PackagesSuccess] with [packageList] as the
  /// success value. If the call fails, it emits [PackagesState.failure] with the
  /// error as the failure value.
  void getUserPlans() async {
    emit(const PlansState.plansLoading());
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
          emit(PlansSuccess<List<UserPlansModel>>(data));
        }, failure: (error) {
          emit(PlansState.plansError(error: error));
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
  // void renewUserPlan({required int id}) async {
  //   emit(const PlansState.renewLoading());
  //   ProfilePackagesRespository.renewMyPlan(id: id).then(
  //     (value) {
  //       value.when(
  //         success: (data) {
  //           emit(const PlansState.renewSuccess());
  //         },
  //         failure: (error) {
  //           emit(PlansState.renewFailure(error));
  //         },
  //       );
  //     },
  //   );
  // }

  void getAllPlans() async {
    emit(const PlansState.plansLoading());
    final response = await ProfilePackagesRespository.getAllPlans();
    response.when(
      success: (allPlans) {
        allPlansList = allPlans;
        emit(PlansState.plansSuccess(allPlans));
      },
      failure: (error) {
        emit(PlansState.plansError(error: error));
      },
    );
  }
}