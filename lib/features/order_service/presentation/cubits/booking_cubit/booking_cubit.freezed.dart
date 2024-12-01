// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookingState {
  String get period => throw _privateConstructorUsedError; // "AM" or "PM"
  String? get time =>
      throw _privateConstructorUsedError; // Time label, e.g., "10:30"
  DateTime? get selectedDate =>
      throw _privateConstructorUsedError; // Selected date
  AddressModel? get selectedAddress =>
      throw _privateConstructorUsedError; // selected address
  int? get reservationType =>
      throw _privateConstructorUsedError; // Add reservationType to track the type
  String? get notes => throw _privateConstructorUsedError; // notes
  AllServicesModel get service => throw _privateConstructorUsedError;
  CarModel? get selectedCar =>
      throw _privateConstructorUsedError; // New field to store the selected car
  BranchModel? get selectedBranch => throw _privateConstructorUsedError;

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingStateCopyWith<BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res, BookingState>;
  @useResult
  $Res call(
      {String period,
      String? time,
      DateTime? selectedDate,
      AddressModel? selectedAddress,
      int? reservationType,
      String? notes,
      AllServicesModel service,
      CarModel? selectedCar,
      BranchModel? selectedBranch});
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? time = freezed,
    Object? selectedDate = freezed,
    Object? selectedAddress = freezed,
    Object? reservationType = freezed,
    Object? notes = freezed,
    Object? service = null,
    Object? selectedCar = freezed,
    Object? selectedBranch = freezed,
  }) {
    return _then(_value.copyWith(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedAddress: freezed == selectedAddress
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
      reservationType: freezed == reservationType
          ? _value.reservationType
          : reservationType // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as AllServicesModel,
      selectedCar: freezed == selectedCar
          ? _value.selectedCar
          : selectedCar // ignore: cast_nullable_to_non_nullable
              as CarModel?,
      selectedBranch: freezed == selectedBranch
          ? _value.selectedBranch
          : selectedBranch // ignore: cast_nullable_to_non_nullable
              as BranchModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingStateImplCopyWith<$Res>
    implements $BookingStateCopyWith<$Res> {
  factory _$$BookingStateImplCopyWith(
          _$BookingStateImpl value, $Res Function(_$BookingStateImpl) then) =
      __$$BookingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String period,
      String? time,
      DateTime? selectedDate,
      AddressModel? selectedAddress,
      int? reservationType,
      String? notes,
      AllServicesModel service,
      CarModel? selectedCar,
      BranchModel? selectedBranch});
}

/// @nodoc
class __$$BookingStateImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingStateImpl>
    implements _$$BookingStateImplCopyWith<$Res> {
  __$$BookingStateImplCopyWithImpl(
      _$BookingStateImpl _value, $Res Function(_$BookingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? time = freezed,
    Object? selectedDate = freezed,
    Object? selectedAddress = freezed,
    Object? reservationType = freezed,
    Object? notes = freezed,
    Object? service = null,
    Object? selectedCar = freezed,
    Object? selectedBranch = freezed,
  }) {
    return _then(_$BookingStateImpl(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedAddress: freezed == selectedAddress
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
      reservationType: freezed == reservationType
          ? _value.reservationType
          : reservationType // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as AllServicesModel,
      selectedCar: freezed == selectedCar
          ? _value.selectedCar
          : selectedCar // ignore: cast_nullable_to_non_nullable
              as CarModel?,
      selectedBranch: freezed == selectedBranch
          ? _value.selectedBranch
          : selectedBranch // ignore: cast_nullable_to_non_nullable
              as BranchModel?,
    ));
  }
}

/// @nodoc

class _$BookingStateImpl implements _BookingState {
  const _$BookingStateImpl(
      {required this.period,
      this.time,
      this.selectedDate,
      this.selectedAddress,
      this.reservationType,
      this.notes,
      required this.service,
      this.selectedCar,
      this.selectedBranch});

  @override
  final String period;
// "AM" or "PM"
  @override
  final String? time;
// Time label, e.g., "10:30"
  @override
  final DateTime? selectedDate;
// Selected date
  @override
  final AddressModel? selectedAddress;
// selected address
  @override
  final int? reservationType;
// Add reservationType to track the type
  @override
  final String? notes;
// notes
  @override
  final AllServicesModel service;
  @override
  final CarModel? selectedCar;
// New field to store the selected car
  @override
  final BranchModel? selectedBranch;

  @override
  String toString() {
    return 'BookingState(period: $period, time: $time, selectedDate: $selectedDate, selectedAddress: $selectedAddress, reservationType: $reservationType, notes: $notes, service: $service, selectedCar: $selectedCar, selectedBranch: $selectedBranch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingStateImpl &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.selectedAddress, selectedAddress) ||
                other.selectedAddress == selectedAddress) &&
            (identical(other.reservationType, reservationType) ||
                other.reservationType == reservationType) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.selectedCar, selectedCar) ||
                other.selectedCar == selectedCar) &&
            (identical(other.selectedBranch, selectedBranch) ||
                other.selectedBranch == selectedBranch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      period,
      time,
      selectedDate,
      selectedAddress,
      reservationType,
      notes,
      service,
      selectedCar,
      selectedBranch);

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingStateImplCopyWith<_$BookingStateImpl> get copyWith =>
      __$$BookingStateImplCopyWithImpl<_$BookingStateImpl>(this, _$identity);
}

abstract class _BookingState implements BookingState {
  const factory _BookingState(
      {required final String period,
      final String? time,
      final DateTime? selectedDate,
      final AddressModel? selectedAddress,
      final int? reservationType,
      final String? notes,
      required final AllServicesModel service,
      final CarModel? selectedCar,
      final BranchModel? selectedBranch}) = _$BookingStateImpl;

  @override
  String get period; // "AM" or "PM"
  @override
  String? get time; // Time label, e.g., "10:30"
  @override
  DateTime? get selectedDate; // Selected date
  @override
  AddressModel? get selectedAddress; // selected address
  @override
  int? get reservationType; // Add reservationType to track the type
  @override
  String? get notes; // notes
  @override
  AllServicesModel get service;
  @override
  CarModel? get selectedCar; // New field to store the selected car
  @override
  BranchModel? get selectedBranch;

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingStateImplCopyWith<_$BookingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
