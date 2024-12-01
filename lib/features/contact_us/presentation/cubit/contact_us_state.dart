part of 'contact_us_cubit.dart';

@freezed
class ContactUsState<T> with _$ContactUsState<T> {
  const factory ContactUsState.initial() = ContactUsInitail;
  const factory ContactUsState.loading() = ContactUsLoading;
  const factory ContactUsState.success(T messageData) = ContactUsSuccess<T>;
  const factory ContactUsState.failure({required ApiErrorHandler error}) =
      ContactUsError;
}
