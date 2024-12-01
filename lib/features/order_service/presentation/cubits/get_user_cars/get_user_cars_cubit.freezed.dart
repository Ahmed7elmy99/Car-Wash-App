// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_cars_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetUserCarsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T allCars) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T allCars)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T allCars)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CarsLoading<T> value) loading,
    required TResult Function(CarsSuccess<T> value) success,
    required TResult Function(CarsFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CarsLoading<T> value)? loading,
    TResult? Function(CarsSuccess<T> value)? success,
    TResult? Function(CarsFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CarsLoading<T> value)? loading,
    TResult Function(CarsSuccess<T> value)? success,
    TResult Function(CarsFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserCarsStateCopyWith<T, $Res> {
  factory $GetUserCarsStateCopyWith(
          GetUserCarsState<T> value, $Res Function(GetUserCarsState<T>) then) =
      _$GetUserCarsStateCopyWithImpl<T, $Res, GetUserCarsState<T>>;
}

/// @nodoc
class _$GetUserCarsStateCopyWithImpl<T, $Res, $Val extends GetUserCarsState<T>>
    implements $GetUserCarsStateCopyWith<T, $Res> {
  _$GetUserCarsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetUserCarsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$GetUserCarsStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GetUserCarsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GetUserCarsState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T allCars) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T allCars)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T allCars)? success,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CarsLoading<T> value) loading,
    required TResult Function(CarsSuccess<T> value) success,
    required TResult Function(CarsFailure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CarsLoading<T> value)? loading,
    TResult? Function(CarsSuccess<T> value)? success,
    TResult? Function(CarsFailure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CarsLoading<T> value)? loading,
    TResult Function(CarsSuccess<T> value)? success,
    TResult Function(CarsFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements GetUserCarsState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$CarsLoadingImplCopyWith<T, $Res> {
  factory _$$CarsLoadingImplCopyWith(_$CarsLoadingImpl<T> value,
          $Res Function(_$CarsLoadingImpl<T>) then) =
      __$$CarsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CarsLoadingImplCopyWithImpl<T, $Res>
    extends _$GetUserCarsStateCopyWithImpl<T, $Res, _$CarsLoadingImpl<T>>
    implements _$$CarsLoadingImplCopyWith<T, $Res> {
  __$$CarsLoadingImplCopyWithImpl(
      _$CarsLoadingImpl<T> _value, $Res Function(_$CarsLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GetUserCarsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CarsLoadingImpl<T> implements CarsLoading<T> {
  const _$CarsLoadingImpl();

  @override
  String toString() {
    return 'GetUserCarsState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CarsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T allCars) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T allCars)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T allCars)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CarsLoading<T> value) loading,
    required TResult Function(CarsSuccess<T> value) success,
    required TResult Function(CarsFailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CarsLoading<T> value)? loading,
    TResult? Function(CarsSuccess<T> value)? success,
    TResult? Function(CarsFailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CarsLoading<T> value)? loading,
    TResult Function(CarsSuccess<T> value)? success,
    TResult Function(CarsFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CarsLoading<T> implements GetUserCarsState<T> {
  const factory CarsLoading() = _$CarsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$CarsSuccessImplCopyWith<T, $Res> {
  factory _$$CarsSuccessImplCopyWith(_$CarsSuccessImpl<T> value,
          $Res Function(_$CarsSuccessImpl<T>) then) =
      __$$CarsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T allCars});
}

/// @nodoc
class __$$CarsSuccessImplCopyWithImpl<T, $Res>
    extends _$GetUserCarsStateCopyWithImpl<T, $Res, _$CarsSuccessImpl<T>>
    implements _$$CarsSuccessImplCopyWith<T, $Res> {
  __$$CarsSuccessImplCopyWithImpl(
      _$CarsSuccessImpl<T> _value, $Res Function(_$CarsSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GetUserCarsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCars = freezed,
  }) {
    return _then(_$CarsSuccessImpl<T>(
      freezed == allCars
          ? _value.allCars
          : allCars // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CarsSuccessImpl<T> implements CarsSuccess<T> {
  const _$CarsSuccessImpl(this.allCars);

  @override
  final T allCars;

  @override
  String toString() {
    return 'GetUserCarsState<$T>.success(allCars: $allCars)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarsSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.allCars, allCars));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(allCars));

  /// Create a copy of GetUserCarsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarsSuccessImplCopyWith<T, _$CarsSuccessImpl<T>> get copyWith =>
      __$$CarsSuccessImplCopyWithImpl<T, _$CarsSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T allCars) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return success(allCars);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T allCars)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return success?.call(allCars);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T allCars)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(allCars);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CarsLoading<T> value) loading,
    required TResult Function(CarsSuccess<T> value) success,
    required TResult Function(CarsFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CarsLoading<T> value)? loading,
    TResult? Function(CarsSuccess<T> value)? success,
    TResult? Function(CarsFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CarsLoading<T> value)? loading,
    TResult Function(CarsSuccess<T> value)? success,
    TResult Function(CarsFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CarsSuccess<T> implements GetUserCarsState<T> {
  const factory CarsSuccess(final T allCars) = _$CarsSuccessImpl<T>;

  T get allCars;

  /// Create a copy of GetUserCarsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarsSuccessImplCopyWith<T, _$CarsSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CarsFailureImplCopyWith<T, $Res> {
  factory _$$CarsFailureImplCopyWith(_$CarsFailureImpl<T> value,
          $Res Function(_$CarsFailureImpl<T>) then) =
      __$$CarsFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorHandler error});
}

/// @nodoc
class __$$CarsFailureImplCopyWithImpl<T, $Res>
    extends _$GetUserCarsStateCopyWithImpl<T, $Res, _$CarsFailureImpl<T>>
    implements _$$CarsFailureImplCopyWith<T, $Res> {
  __$$CarsFailureImplCopyWithImpl(
      _$CarsFailureImpl<T> _value, $Res Function(_$CarsFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GetUserCarsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CarsFailureImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorHandler,
    ));
  }
}

/// @nodoc

class _$CarsFailureImpl<T> implements CarsFailure<T> {
  const _$CarsFailureImpl({required this.error});

  @override
  final ApiErrorHandler error;

  @override
  String toString() {
    return 'GetUserCarsState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarsFailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of GetUserCarsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarsFailureImplCopyWith<T, _$CarsFailureImpl<T>> get copyWith =>
      __$$CarsFailureImplCopyWithImpl<T, _$CarsFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T allCars) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T allCars)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T allCars)? success,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CarsLoading<T> value) loading,
    required TResult Function(CarsSuccess<T> value) success,
    required TResult Function(CarsFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CarsLoading<T> value)? loading,
    TResult? Function(CarsSuccess<T> value)? success,
    TResult? Function(CarsFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CarsLoading<T> value)? loading,
    TResult Function(CarsSuccess<T> value)? success,
    TResult Function(CarsFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CarsFailure<T> implements GetUserCarsState<T> {
  const factory CarsFailure({required final ApiErrorHandler error}) =
      _$CarsFailureImpl<T>;

  ApiErrorHandler get error;

  /// Create a copy of GetUserCarsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarsFailureImplCopyWith<T, _$CarsFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
