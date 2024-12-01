// import 'package:car_wash_mobile_app/core/models/cupon/cupon_model.dart';
// import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
// import 'package:car_wash_mobile_app/features/service_details/logic/repo/add_cupon_repository.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'cupon_state.dart';
// part 'cupon_cubit.freezed.dart';

// class CuponCubit extends Cubit<CuponState> {
//   CuponCubit() : super(const CuponState.initial());
//    static CuponCubit get(context) => BlocProvider.of(context);
//   GlobalKey<FormState> formstate = GlobalKey<FormState>();
//   TextEditingController cuponNumber = TextEditingController();
//   CuponModel? cuponModel;

  
//   Future<void> applyCupon()async {
//     if (formstate.currentState!.validate()) {
//       emit(const cuponStateLoadingState());
//       AddCuponRepository.applyCupon(cuponNumber: cuponNumber.text)
//           .then((response) {
//         response.when(
//           success: (cuponData) {
//             cuponModel = cuponData;
//             emit(const cuponStateSuccessState());
//           },
//           failure: (error) {
//             emit(cuponStateErrorState(error: error));
//           },
//         );
//       });
//     }
//   }
// }
