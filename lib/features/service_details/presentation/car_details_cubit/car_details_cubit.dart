import 'dart:io';

import 'package:car_wash_mobile_app/core/models/car_details/car_details_model.dart';
import 'package:car_wash_mobile_app/core/models/cars_types/cars_types_model.dart';
import 'package:car_wash_mobile_app/core/network/api_error_handler.dart';
import 'package:car_wash_mobile_app/features/service_details/logic/repo/create_car_details_repository.dart';

import 'package:car_wash_mobile_app/features/service_details/logic/repo/get_car_types_repository.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

part 'car_details_state.dart';
part 'car_details_cubit.freezed.dart';

// start: edited by helmy
//creat At Date (11/11/2024)
//Added: Check if carColor is null then return show snackbar to user to select car color at date(11/11/2024) by helmy
//created : car details cubit for handling state management
class CarDetailsCubit extends Cubit<CarDetailsState> {
  CarDetailsCubit() : super(const CarDetailsState.initial());
  static CarDetailsCubit get(context) => BlocProvider.of(context);
  List<CarsTypesModel> carsTypesModel = [];
  CarDetailsModel? carDetailsModel;

  File? carImageFile;
  TextEditingController carNumberController = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  int? carId;
  String? carName;
  Color selectedColor = ColorName.black;
  String? carColor;
//this function to get car types
  Future<void> getCarTypes() async {
    emit(const carDetailsLoadingState());
    GetCarTypesRepository.getCarTypes().then(
      (value) {
        value.when(
          success: (paymentWaysList) {
            carsTypesModel = paymentWaysList;
            emit(const carDetailsSuccessState());
          },
          failure: (error) {
            emit(carDetailsErrorState(error: error));
          },
        );
      },
    );
  }

//this function to create car details
  Future<void> createCarDetails(context) async {
    if (formstate.currentState!.validate()) {
      if (carImageFile == null) {
        _showSnackBar(
            context, "Error!!".tr, "Please select a profile image.".tr);
        return;
      }
      //Added: Check if carColor is null then return show snackbar to user to select car color at date(11/11/2024) by helmy
      if (carColor == null) {
        _showSnackBar(context, "Error!!".tr, "please select car color".tr);
        return;
      }
//end by helmy (11/11/2024)
      emit(const createCarDetailsLoadingState());
      CreateCarDetailsRepository.createCarDetails(
        carColor: carColor!,
        carNubmer: carNumberController.text,
        carName: carName!,
        isDefault: "1",
        carId: carId!,
        image: carImageFile!,
      ).then((response) {
        response.when(
          success: (carDetails) {
            carDetailsModel = carDetails;
            emit(const createCarDetailsSuccessState());
          },
          failure: (error) {
            emit(CreateCarDetailsErrorState(error: error));
          },
        );
      });
    }
  }

//this function to show snack bar
  void _showSnackBar(BuildContext context, String title, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$title: $message'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  // Dispose method to clean up controllers when the cubit is closed
  @override
  Future<void> close() {
    carNumberController.dispose();

    return super.close();
  }

//this function to pick image
  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      carImageFile = File(pickedFile.path);
      emit(
          const CarDetailsImagePickedState()); // Emit a new state to trigger UI update
    }
  }
}
