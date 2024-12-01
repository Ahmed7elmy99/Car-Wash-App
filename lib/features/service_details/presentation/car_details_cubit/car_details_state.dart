part of 'car_details_cubit.dart';

// start: created by helmy
//creat At Date (6/11/2024)
//created : car details states for handling state management

@freezed
class CarDetailsState with _$CarDetailsState {

  const factory CarDetailsState.initial() = carDetailsInitialState;

  const factory CarDetailsState.loading() = carDetailsLoadingState;

  const factory CarDetailsState.success() = carDetailsSuccessState;

  const factory CarDetailsState.error({required ApiErrorHandler error}) = carDetailsErrorState;

  const factory CarDetailsState.imagePicked() = CarDetailsImagePickedState;

  const factory CarDetailsState.createLoading() = createCarDetailsLoadingState;

  const factory CarDetailsState.createSuccess() = createCarDetailsSuccessState;

  const factory CarDetailsState.createError({required ApiErrorHandler error}) = CreateCarDetailsErrorState;
  
  const factory CarDetailsState.editImagePicked() = editCarDetailsImagePickedState;

  const factory CarDetailsState.editLoading() = editCarDetailsLoadingState;

  const factory CarDetailsState.editSuccess() = editCarDetailsSuccessState;

  const factory CarDetailsState.editError({required ApiErrorHandler error}) = editCarDetailsErrorState;

}
