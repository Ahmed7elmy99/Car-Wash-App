// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ApiErrorHandler error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(ApiErrorHandler error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ApiErrorHandler error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(serviceDetailsInitialState value) initial,
    required TResult Function(serviceDetailsLoadingState value) loading,
    required TResult Function(serviceDetailsSuccessState value) success,
    required TResult Function(serviceDetailsErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(serviceDetailsInitialState value)? initial,
    TResult? Function(serviceDetailsLoadingState value)? loading,
    TResult? Function(serviceDetailsSuccessState value)? success,
    TResult? Function(serviceDetailsErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(serviceDetailsInitialState value)? initial,
    TResult Function(serviceDetailsLoadingState value)? loading,
    TResult Function(serviceDetailsSuccessState value)? success,
    TResult Function(serviceDetailsErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDetailsStateCopyWith<$Res> {
  factory $ServiceDetailsStateCopyWith(
          ServiceDetailsState value, $Res Function(ServiceDetailsState) then) =
      _$ServiceDetailsStateCopyWithImpl<$Res, ServiceDetailsState>;
}

/// @nodoc
class _$ServiceDetailsStateCopyWithImpl<$Res, $Val extends ServiceDetailsState>
    implements $ServiceDetailsStateCopyWith<$Res> {
  _$ServiceDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$serviceDetailsInitialStateImplCopyWith<$Res> {
  factory _$$serviceDetailsInitialStateImplCopyWith(
          _$serviceDetailsInitialStateImpl value,
          $Res Function(_$serviceDetailsInitialStateImpl) then) =
      __$$serviceDetailsInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$serviceDetailsInitialStateImplCopyWithImpl<$Res>
    extends _$ServiceDetailsStateCopyWithImpl<$Res,
        _$serviceDetailsInitialStateImpl>
    implements _$$serviceDetailsInitialStateImplCopyWith<$Res> {
  __$$serviceDetailsInitialStateImplCopyWithImpl(
      _$serviceDetailsInitialStateImpl _value,
      $Res Function(_$serviceDetailsInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$serviceDetailsInitialStateImpl implements serviceDetailsInitialState {
  const _$serviceDetailsInitialStateImpl();

  @override
  String toString() {
    return 'ServiceDetailsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$serviceDetailsInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ApiErrorHandler error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(ApiErrorHandler error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ApiErrorHandler error)? error,
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
    required TResult Function(serviceDetailsInitialState value) initial,
    required TResult Function(serviceDetailsLoadingState value) loading,
    required TResult Function(serviceDetailsSuccessState value) success,
    required TResult Function(serviceDetailsErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(serviceDetailsInitialState value)? initial,
    TResult? Function(serviceDetailsLoadingState value)? loading,
    TResult? Function(serviceDetailsSuccessState value)? success,
    TResult? Function(serviceDetailsErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(serviceDetailsInitialState value)? initial,
    TResult Function(serviceDetailsLoadingState value)? loading,
    TResult Function(serviceDetailsSuccessState value)? success,
    TResult Function(serviceDetailsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class serviceDetailsInitialState implements ServiceDetailsState {
  const factory serviceDetailsInitialState() = _$serviceDetailsInitialStateImpl;
}

/// @nodoc
abstract class _$$serviceDetailsLoadingStateImplCopyWith<$Res> {
  factory _$$serviceDetailsLoadingStateImplCopyWith(
          _$serviceDetailsLoadingStateImpl value,
          $Res Function(_$serviceDetailsLoadingStateImpl) then) =
      __$$serviceDetailsLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$serviceDetailsLoadingStateImplCopyWithImpl<$Res>
    extends _$ServiceDetailsStateCopyWithImpl<$Res,
        _$serviceDetailsLoadingStateImpl>
    implements _$$serviceDetailsLoadingStateImplCopyWith<$Res> {
  __$$serviceDetailsLoadingStateImplCopyWithImpl(
      _$serviceDetailsLoadingStateImpl _value,
      $Res Function(_$serviceDetailsLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$serviceDetailsLoadingStateImpl implements serviceDetailsLoadingState {
  const _$serviceDetailsLoadingStateImpl();

  @override
  String toString() {
    return 'ServiceDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$serviceDetailsLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ApiErrorHandler error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(ApiErrorHandler error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ApiErrorHandler error)? error,
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
    required TResult Function(serviceDetailsInitialState value) initial,
    required TResult Function(serviceDetailsLoadingState value) loading,
    required TResult Function(serviceDetailsSuccessState value) success,
    required TResult Function(serviceDetailsErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(serviceDetailsInitialState value)? initial,
    TResult? Function(serviceDetailsLoadingState value)? loading,
    TResult? Function(serviceDetailsSuccessState value)? success,
    TResult? Function(serviceDetailsErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(serviceDetailsInitialState value)? initial,
    TResult Function(serviceDetailsLoadingState value)? loading,
    TResult Function(serviceDetailsSuccessState value)? success,
    TResult Function(serviceDetailsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class serviceDetailsLoadingState implements ServiceDetailsState {
  const factory serviceDetailsLoadingState() = _$serviceDetailsLoadingStateImpl;
}

/// @nodoc
abstract class _$$serviceDetailsSuccessStateImplCopyWith<$Res> {
  factory _$$serviceDetailsSuccessStateImplCopyWith(
          _$serviceDetailsSuccessStateImpl value,
          $Res Function(_$serviceDetailsSuccessStateImpl) then) =
      __$$serviceDetailsSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$serviceDetailsSuccessStateImplCopyWithImpl<$Res>
    extends _$ServiceDetailsStateCopyWithImpl<$Res,
        _$serviceDetailsSuccessStateImpl>
    implements _$$serviceDetailsSuccessStateImplCopyWith<$Res> {
  __$$serviceDetailsSuccessStateImplCopyWithImpl(
      _$serviceDetailsSuccessStateImpl _value,
      $Res Function(_$serviceDetailsSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$serviceDetailsSuccessStateImpl implements serviceDetailsSuccessState {
  const _$serviceDetailsSuccessStateImpl();

  @override
  String toString() {
    return 'ServiceDetailsState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$serviceDetailsSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ApiErrorHandler error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(ApiErrorHandler error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ApiErrorHandler error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(serviceDetailsInitialState value) initial,
    required TResult Function(serviceDetailsLoadingState value) loading,
    required TResult Function(serviceDetailsSuccessState value) success,
    required TResult Function(serviceDetailsErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(serviceDetailsInitialState value)? initial,
    TResult? Function(serviceDetailsLoadingState value)? loading,
    TResult? Function(serviceDetailsSuccessState value)? success,
    TResult? Function(serviceDetailsErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(serviceDetailsInitialState value)? initial,
    TResult Function(serviceDetailsLoadingState value)? loading,
    TResult Function(serviceDetailsSuccessState value)? success,
    TResult Function(serviceDetailsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class serviceDetailsSuccessState implements ServiceDetailsState {
  const factory serviceDetailsSuccessState() = _$serviceDetailsSuccessStateImpl;
}

/// @nodoc
abstract class _$$serviceDetailsErrorStateImplCopyWith<$Res> {
  factory _$$serviceDetailsErrorStateImplCopyWith(
          _$serviceDetailsErrorStateImpl value,
          $Res Function(_$serviceDetailsErrorStateImpl) then) =
      __$$serviceDetailsErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorHandler error});
}

/// @nodoc
class __$$serviceDetailsErrorStateImplCopyWithImpl<$Res>
    extends _$ServiceDetailsStateCopyWithImpl<$Res,
        _$serviceDetailsErrorStateImpl>
    implements _$$serviceDetailsErrorStateImplCopyWith<$Res> {
  __$$serviceDetailsErrorStateImplCopyWithImpl(
      _$serviceDetailsErrorStateImpl _value,
      $Res Function(_$serviceDetailsErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$serviceDetailsErrorStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorHandler,
    ));
  }
}

/// @nodoc

class _$serviceDetailsErrorStateImpl implements serviceDetailsErrorState {
  const _$serviceDetailsErrorStateImpl({required this.error});

  @override
  final ApiErrorHandler error;

  @override
  String toString() {
    return 'ServiceDetailsState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$serviceDetailsErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ServiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$serviceDetailsErrorStateImplCopyWith<_$serviceDetailsErrorStateImpl>
      get copyWith => __$$serviceDetailsErrorStateImplCopyWithImpl<
          _$serviceDetailsErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(ApiErrorHandler error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(ApiErrorHandler error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(ApiErrorHandler error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(serviceDetailsInitialState value) initial,
    required TResult Function(serviceDetailsLoadingState value) loading,
    required TResult Function(serviceDetailsSuccessState value) success,
    required TResult Function(serviceDetailsErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(serviceDetailsInitialState value)? initial,
    TResult? Function(serviceDetailsLoadingState value)? loading,
    TResult? Function(serviceDetailsSuccessState value)? success,
    TResult? Function(serviceDetailsErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(serviceDetailsInitialState value)? initial,
    TResult Function(serviceDetailsLoadingState value)? loading,
    TResult Function(serviceDetailsSuccessState value)? success,
    TResult Function(serviceDetailsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class serviceDetailsErrorState implements ServiceDetailsState {
  const factory serviceDetailsErrorState(
      {required final ApiErrorHandler error}) = _$serviceDetailsErrorStateImpl;

  ApiErrorHandler get error;

  /// Create a copy of ServiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$serviceDetailsErrorStateImplCopyWith<_$serviceDetailsErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
