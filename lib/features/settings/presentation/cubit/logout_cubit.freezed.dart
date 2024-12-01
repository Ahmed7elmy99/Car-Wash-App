// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogoutState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T logoutUser) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T logoutUser)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T logoutUser)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogoutStateInitail<T> value) initial,
    required TResult Function(LogoutStateLoading<T> value) loading,
    required TResult Function(LogoutStateSuccess<T> value) success,
    required TResult Function(LogoutStateError<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutStateInitail<T> value)? initial,
    TResult? Function(LogoutStateLoading<T> value)? loading,
    TResult? Function(LogoutStateSuccess<T> value)? success,
    TResult? Function(LogoutStateError<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutStateInitail<T> value)? initial,
    TResult Function(LogoutStateLoading<T> value)? loading,
    TResult Function(LogoutStateSuccess<T> value)? success,
    TResult Function(LogoutStateError<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutStateCopyWith<T, $Res> {
  factory $LogoutStateCopyWith(
          LogoutState<T> value, $Res Function(LogoutState<T>) then) =
      _$LogoutStateCopyWithImpl<T, $Res, LogoutState<T>>;
}

/// @nodoc
class _$LogoutStateCopyWithImpl<T, $Res, $Val extends LogoutState<T>>
    implements $LogoutStateCopyWith<T, $Res> {
  _$LogoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LogoutStateInitailImplCopyWith<T, $Res> {
  factory _$$LogoutStateInitailImplCopyWith(_$LogoutStateInitailImpl<T> value,
          $Res Function(_$LogoutStateInitailImpl<T>) then) =
      __$$LogoutStateInitailImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LogoutStateInitailImplCopyWithImpl<T, $Res>
    extends _$LogoutStateCopyWithImpl<T, $Res, _$LogoutStateInitailImpl<T>>
    implements _$$LogoutStateInitailImplCopyWith<T, $Res> {
  __$$LogoutStateInitailImplCopyWithImpl(_$LogoutStateInitailImpl<T> _value,
      $Res Function(_$LogoutStateInitailImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutStateInitailImpl<T> implements LogoutStateInitail<T> {
  const _$LogoutStateInitailImpl();

  @override
  String toString() {
    return 'LogoutState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutStateInitailImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T logoutUser) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T logoutUser)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T logoutUser)? success,
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
    required TResult Function(LogoutStateInitail<T> value) initial,
    required TResult Function(LogoutStateLoading<T> value) loading,
    required TResult Function(LogoutStateSuccess<T> value) success,
    required TResult Function(LogoutStateError<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutStateInitail<T> value)? initial,
    TResult? Function(LogoutStateLoading<T> value)? loading,
    TResult? Function(LogoutStateSuccess<T> value)? success,
    TResult? Function(LogoutStateError<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutStateInitail<T> value)? initial,
    TResult Function(LogoutStateLoading<T> value)? loading,
    TResult Function(LogoutStateSuccess<T> value)? success,
    TResult Function(LogoutStateError<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LogoutStateInitail<T> implements LogoutState<T> {
  const factory LogoutStateInitail() = _$LogoutStateInitailImpl<T>;
}

/// @nodoc
abstract class _$$LogoutStateLoadingImplCopyWith<T, $Res> {
  factory _$$LogoutStateLoadingImplCopyWith(_$LogoutStateLoadingImpl<T> value,
          $Res Function(_$LogoutStateLoadingImpl<T>) then) =
      __$$LogoutStateLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LogoutStateLoadingImplCopyWithImpl<T, $Res>
    extends _$LogoutStateCopyWithImpl<T, $Res, _$LogoutStateLoadingImpl<T>>
    implements _$$LogoutStateLoadingImplCopyWith<T, $Res> {
  __$$LogoutStateLoadingImplCopyWithImpl(_$LogoutStateLoadingImpl<T> _value,
      $Res Function(_$LogoutStateLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutStateLoadingImpl<T> implements LogoutStateLoading<T> {
  const _$LogoutStateLoadingImpl();

  @override
  String toString() {
    return 'LogoutState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutStateLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T logoutUser) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T logoutUser)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T logoutUser)? success,
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
    required TResult Function(LogoutStateInitail<T> value) initial,
    required TResult Function(LogoutStateLoading<T> value) loading,
    required TResult Function(LogoutStateSuccess<T> value) success,
    required TResult Function(LogoutStateError<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutStateInitail<T> value)? initial,
    TResult? Function(LogoutStateLoading<T> value)? loading,
    TResult? Function(LogoutStateSuccess<T> value)? success,
    TResult? Function(LogoutStateError<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutStateInitail<T> value)? initial,
    TResult Function(LogoutStateLoading<T> value)? loading,
    TResult Function(LogoutStateSuccess<T> value)? success,
    TResult Function(LogoutStateError<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LogoutStateLoading<T> implements LogoutState<T> {
  const factory LogoutStateLoading() = _$LogoutStateLoadingImpl<T>;
}

/// @nodoc
abstract class _$$LogoutStateSuccessImplCopyWith<T, $Res> {
  factory _$$LogoutStateSuccessImplCopyWith(_$LogoutStateSuccessImpl<T> value,
          $Res Function(_$LogoutStateSuccessImpl<T>) then) =
      __$$LogoutStateSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T logoutUser});
}

/// @nodoc
class __$$LogoutStateSuccessImplCopyWithImpl<T, $Res>
    extends _$LogoutStateCopyWithImpl<T, $Res, _$LogoutStateSuccessImpl<T>>
    implements _$$LogoutStateSuccessImplCopyWith<T, $Res> {
  __$$LogoutStateSuccessImplCopyWithImpl(_$LogoutStateSuccessImpl<T> _value,
      $Res Function(_$LogoutStateSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logoutUser = freezed,
  }) {
    return _then(_$LogoutStateSuccessImpl<T>(
      freezed == logoutUser
          ? _value.logoutUser
          : logoutUser // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$LogoutStateSuccessImpl<T> implements LogoutStateSuccess<T> {
  const _$LogoutStateSuccessImpl(this.logoutUser);

  @override
  final T logoutUser;

  @override
  String toString() {
    return 'LogoutState<$T>.success(logoutUser: $logoutUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutStateSuccessImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.logoutUser, logoutUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(logoutUser));

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutStateSuccessImplCopyWith<T, _$LogoutStateSuccessImpl<T>>
      get copyWith => __$$LogoutStateSuccessImplCopyWithImpl<T,
          _$LogoutStateSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T logoutUser) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return success(logoutUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T logoutUser)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return success?.call(logoutUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T logoutUser)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(logoutUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogoutStateInitail<T> value) initial,
    required TResult Function(LogoutStateLoading<T> value) loading,
    required TResult Function(LogoutStateSuccess<T> value) success,
    required TResult Function(LogoutStateError<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutStateInitail<T> value)? initial,
    TResult? Function(LogoutStateLoading<T> value)? loading,
    TResult? Function(LogoutStateSuccess<T> value)? success,
    TResult? Function(LogoutStateError<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutStateInitail<T> value)? initial,
    TResult Function(LogoutStateLoading<T> value)? loading,
    TResult Function(LogoutStateSuccess<T> value)? success,
    TResult Function(LogoutStateError<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LogoutStateSuccess<T> implements LogoutState<T> {
  const factory LogoutStateSuccess(final T logoutUser) =
      _$LogoutStateSuccessImpl<T>;

  T get logoutUser;

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogoutStateSuccessImplCopyWith<T, _$LogoutStateSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutStateErrorImplCopyWith<T, $Res> {
  factory _$$LogoutStateErrorImplCopyWith(_$LogoutStateErrorImpl<T> value,
          $Res Function(_$LogoutStateErrorImpl<T>) then) =
      __$$LogoutStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorHandler error});
}

/// @nodoc
class __$$LogoutStateErrorImplCopyWithImpl<T, $Res>
    extends _$LogoutStateCopyWithImpl<T, $Res, _$LogoutStateErrorImpl<T>>
    implements _$$LogoutStateErrorImplCopyWith<T, $Res> {
  __$$LogoutStateErrorImplCopyWithImpl(_$LogoutStateErrorImpl<T> _value,
      $Res Function(_$LogoutStateErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LogoutStateErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorHandler,
    ));
  }
}

/// @nodoc

class _$LogoutStateErrorImpl<T> implements LogoutStateError<T> {
  const _$LogoutStateErrorImpl({required this.error});

  @override
  final ApiErrorHandler error;

  @override
  String toString() {
    return 'LogoutState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutStateErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutStateErrorImplCopyWith<T, _$LogoutStateErrorImpl<T>> get copyWith =>
      __$$LogoutStateErrorImplCopyWithImpl<T, _$LogoutStateErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T logoutUser) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T logoutUser)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T logoutUser)? success,
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
    required TResult Function(LogoutStateInitail<T> value) initial,
    required TResult Function(LogoutStateLoading<T> value) loading,
    required TResult Function(LogoutStateSuccess<T> value) success,
    required TResult Function(LogoutStateError<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutStateInitail<T> value)? initial,
    TResult? Function(LogoutStateLoading<T> value)? loading,
    TResult? Function(LogoutStateSuccess<T> value)? success,
    TResult? Function(LogoutStateError<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutStateInitail<T> value)? initial,
    TResult Function(LogoutStateLoading<T> value)? loading,
    TResult Function(LogoutStateSuccess<T> value)? success,
    TResult Function(LogoutStateError<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class LogoutStateError<T> implements LogoutState<T> {
  const factory LogoutStateError({required final ApiErrorHandler error}) =
      _$LogoutStateErrorImpl<T>;

  ApiErrorHandler get error;

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogoutStateErrorImplCopyWith<T, _$LogoutStateErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
