// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReservationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(List<DetailedBookingData> data) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(List<DetailedBookingData> data)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(List<DetailedBookingData> data)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialReservation value) initial,
    required TResult Function(LoadReservation value) load,
    required TResult Function(SuccessReservation value) success,
    required TResult Function(failureReservation value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialReservation value)? initial,
    TResult? Function(LoadReservation value)? load,
    TResult? Function(SuccessReservation value)? success,
    TResult? Function(failureReservation value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialReservation value)? initial,
    TResult Function(LoadReservation value)? load,
    TResult Function(SuccessReservation value)? success,
    TResult Function(failureReservation value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationStateCopyWith<$Res> {
  factory $ReservationStateCopyWith(
          ReservationState value, $Res Function(ReservationState) then) =
      _$ReservationStateCopyWithImpl<$Res, ReservationState>;
}

/// @nodoc
class _$ReservationStateCopyWithImpl<$Res, $Val extends ReservationState>
    implements $ReservationStateCopyWith<$Res> {
  _$ReservationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReservationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialReservationImplCopyWith<$Res> {
  factory _$$InitialReservationImplCopyWith(_$InitialReservationImpl value,
          $Res Function(_$InitialReservationImpl) then) =
      __$$InitialReservationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialReservationImplCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res, _$InitialReservationImpl>
    implements _$$InitialReservationImplCopyWith<$Res> {
  __$$InitialReservationImplCopyWithImpl(_$InitialReservationImpl _value,
      $Res Function(_$InitialReservationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReservationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialReservationImpl implements InitialReservation {
  const _$InitialReservationImpl();

  @override
  String toString() {
    return 'ReservationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialReservationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(List<DetailedBookingData> data) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(List<DetailedBookingData> data)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(List<DetailedBookingData> data)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialReservation value) initial,
    required TResult Function(LoadReservation value) load,
    required TResult Function(SuccessReservation value) success,
    required TResult Function(failureReservation value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialReservation value)? initial,
    TResult? Function(LoadReservation value)? load,
    TResult? Function(SuccessReservation value)? success,
    TResult? Function(failureReservation value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialReservation value)? initial,
    TResult Function(LoadReservation value)? load,
    TResult Function(SuccessReservation value)? success,
    TResult Function(failureReservation value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialReservation implements ReservationState {
  const factory InitialReservation() = _$InitialReservationImpl;
}

/// @nodoc
abstract class _$$LoadReservationImplCopyWith<$Res> {
  factory _$$LoadReservationImplCopyWith(_$LoadReservationImpl value,
          $Res Function(_$LoadReservationImpl) then) =
      __$$LoadReservationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadReservationImplCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res, _$LoadReservationImpl>
    implements _$$LoadReservationImplCopyWith<$Res> {
  __$$LoadReservationImplCopyWithImpl(
      _$LoadReservationImpl _value, $Res Function(_$LoadReservationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReservationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadReservationImpl implements LoadReservation {
  const _$LoadReservationImpl();

  @override
  String toString() {
    return 'ReservationState.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadReservationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(List<DetailedBookingData> data) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(List<DetailedBookingData> data)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(List<DetailedBookingData> data)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialReservation value) initial,
    required TResult Function(LoadReservation value) load,
    required TResult Function(SuccessReservation value) success,
    required TResult Function(failureReservation value) failure,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialReservation value)? initial,
    TResult? Function(LoadReservation value)? load,
    TResult? Function(SuccessReservation value)? success,
    TResult? Function(failureReservation value)? failure,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialReservation value)? initial,
    TResult Function(LoadReservation value)? load,
    TResult Function(SuccessReservation value)? success,
    TResult Function(failureReservation value)? failure,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadReservation implements ReservationState {
  const factory LoadReservation() = _$LoadReservationImpl;
}

/// @nodoc
abstract class _$$SuccessReservationImplCopyWith<$Res> {
  factory _$$SuccessReservationImplCopyWith(_$SuccessReservationImpl value,
          $Res Function(_$SuccessReservationImpl) then) =
      __$$SuccessReservationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DetailedBookingData> data});
}

/// @nodoc
class __$$SuccessReservationImplCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res, _$SuccessReservationImpl>
    implements _$$SuccessReservationImplCopyWith<$Res> {
  __$$SuccessReservationImplCopyWithImpl(_$SuccessReservationImpl _value,
      $Res Function(_$SuccessReservationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReservationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessReservationImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DetailedBookingData>,
    ));
  }
}

/// @nodoc

class _$SuccessReservationImpl implements SuccessReservation {
  const _$SuccessReservationImpl(final List<DetailedBookingData> data)
      : _data = data;

  final List<DetailedBookingData> _data;
  @override
  List<DetailedBookingData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ReservationState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessReservationImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ReservationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessReservationImplCopyWith<_$SuccessReservationImpl> get copyWith =>
      __$$SuccessReservationImplCopyWithImpl<_$SuccessReservationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(List<DetailedBookingData> data) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(List<DetailedBookingData> data)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(List<DetailedBookingData> data)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialReservation value) initial,
    required TResult Function(LoadReservation value) load,
    required TResult Function(SuccessReservation value) success,
    required TResult Function(failureReservation value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialReservation value)? initial,
    TResult? Function(LoadReservation value)? load,
    TResult? Function(SuccessReservation value)? success,
    TResult? Function(failureReservation value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialReservation value)? initial,
    TResult Function(LoadReservation value)? load,
    TResult Function(SuccessReservation value)? success,
    TResult Function(failureReservation value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessReservation implements ReservationState {
  const factory SuccessReservation(final List<DetailedBookingData> data) =
      _$SuccessReservationImpl;

  List<DetailedBookingData> get data;

  /// Create a copy of ReservationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessReservationImplCopyWith<_$SuccessReservationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$failureReservationImplCopyWith<$Res> {
  factory _$$failureReservationImplCopyWith(_$failureReservationImpl value,
          $Res Function(_$failureReservationImpl) then) =
      __$$failureReservationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorHandler error});
}

/// @nodoc
class __$$failureReservationImplCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res, _$failureReservationImpl>
    implements _$$failureReservationImplCopyWith<$Res> {
  __$$failureReservationImplCopyWithImpl(_$failureReservationImpl _value,
      $Res Function(_$failureReservationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReservationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$failureReservationImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorHandler,
    ));
  }
}

/// @nodoc

class _$failureReservationImpl implements failureReservation {
  const _$failureReservationImpl(this.error);

  @override
  final ApiErrorHandler error;

  @override
  String toString() {
    return 'ReservationState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$failureReservationImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ReservationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$failureReservationImplCopyWith<_$failureReservationImpl> get copyWith =>
      __$$failureReservationImplCopyWithImpl<_$failureReservationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(List<DetailedBookingData> data) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(List<DetailedBookingData> data)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(List<DetailedBookingData> data)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialReservation value) initial,
    required TResult Function(LoadReservation value) load,
    required TResult Function(SuccessReservation value) success,
    required TResult Function(failureReservation value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialReservation value)? initial,
    TResult? Function(LoadReservation value)? load,
    TResult? Function(SuccessReservation value)? success,
    TResult? Function(failureReservation value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialReservation value)? initial,
    TResult Function(LoadReservation value)? load,
    TResult Function(SuccessReservation value)? success,
    TResult Function(failureReservation value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class failureReservation implements ReservationState {
  const factory failureReservation(final ApiErrorHandler error) =
      _$failureReservationImpl;

  ApiErrorHandler get error;

  /// Create a copy of ReservationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$failureReservationImplCopyWith<_$failureReservationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
