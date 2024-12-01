// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupState {
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
    required TResult Function(signUpInitialState value) initial,
    required TResult Function(signUpLoadingState value) loading,
    required TResult Function(signUpSuccessState value) success,
    required TResult Function(signUpErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(signUpInitialState value)? initial,
    TResult? Function(signUpLoadingState value)? loading,
    TResult? Function(signUpSuccessState value)? success,
    TResult? Function(signUpErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(signUpInitialState value)? initial,
    TResult Function(signUpLoadingState value)? loading,
    TResult Function(signUpSuccessState value)? success,
    TResult Function(signUpErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$signUpInitialStateImplCopyWith<$Res> {
  factory _$$signUpInitialStateImplCopyWith(_$signUpInitialStateImpl value,
          $Res Function(_$signUpInitialStateImpl) then) =
      __$$signUpInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$signUpInitialStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$signUpInitialStateImpl>
    implements _$$signUpInitialStateImplCopyWith<$Res> {
  __$$signUpInitialStateImplCopyWithImpl(_$signUpInitialStateImpl _value,
      $Res Function(_$signUpInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$signUpInitialStateImpl implements signUpInitialState {
  const _$signUpInitialStateImpl();

  @override
  String toString() {
    return 'SignupState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$signUpInitialStateImpl);
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
    required TResult Function(signUpInitialState value) initial,
    required TResult Function(signUpLoadingState value) loading,
    required TResult Function(signUpSuccessState value) success,
    required TResult Function(signUpErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(signUpInitialState value)? initial,
    TResult? Function(signUpLoadingState value)? loading,
    TResult? Function(signUpSuccessState value)? success,
    TResult? Function(signUpErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(signUpInitialState value)? initial,
    TResult Function(signUpLoadingState value)? loading,
    TResult Function(signUpSuccessState value)? success,
    TResult Function(signUpErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class signUpInitialState implements SignupState {
  const factory signUpInitialState() = _$signUpInitialStateImpl;
}

/// @nodoc
abstract class _$$signUpLoadingStateImplCopyWith<$Res> {
  factory _$$signUpLoadingStateImplCopyWith(_$signUpLoadingStateImpl value,
          $Res Function(_$signUpLoadingStateImpl) then) =
      __$$signUpLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$signUpLoadingStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$signUpLoadingStateImpl>
    implements _$$signUpLoadingStateImplCopyWith<$Res> {
  __$$signUpLoadingStateImplCopyWithImpl(_$signUpLoadingStateImpl _value,
      $Res Function(_$signUpLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$signUpLoadingStateImpl implements signUpLoadingState {
  const _$signUpLoadingStateImpl();

  @override
  String toString() {
    return 'SignupState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$signUpLoadingStateImpl);
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
    required TResult Function(signUpInitialState value) initial,
    required TResult Function(signUpLoadingState value) loading,
    required TResult Function(signUpSuccessState value) success,
    required TResult Function(signUpErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(signUpInitialState value)? initial,
    TResult? Function(signUpLoadingState value)? loading,
    TResult? Function(signUpSuccessState value)? success,
    TResult? Function(signUpErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(signUpInitialState value)? initial,
    TResult Function(signUpLoadingState value)? loading,
    TResult Function(signUpSuccessState value)? success,
    TResult Function(signUpErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class signUpLoadingState implements SignupState {
  const factory signUpLoadingState() = _$signUpLoadingStateImpl;
}

/// @nodoc
abstract class _$$signUpSuccessStateImplCopyWith<$Res> {
  factory _$$signUpSuccessStateImplCopyWith(_$signUpSuccessStateImpl value,
          $Res Function(_$signUpSuccessStateImpl) then) =
      __$$signUpSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$signUpSuccessStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$signUpSuccessStateImpl>
    implements _$$signUpSuccessStateImplCopyWith<$Res> {
  __$$signUpSuccessStateImplCopyWithImpl(_$signUpSuccessStateImpl _value,
      $Res Function(_$signUpSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$signUpSuccessStateImpl implements signUpSuccessState {
  const _$signUpSuccessStateImpl();

  @override
  String toString() {
    return 'SignupState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$signUpSuccessStateImpl);
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
    required TResult Function(signUpInitialState value) initial,
    required TResult Function(signUpLoadingState value) loading,
    required TResult Function(signUpSuccessState value) success,
    required TResult Function(signUpErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(signUpInitialState value)? initial,
    TResult? Function(signUpLoadingState value)? loading,
    TResult? Function(signUpSuccessState value)? success,
    TResult? Function(signUpErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(signUpInitialState value)? initial,
    TResult Function(signUpLoadingState value)? loading,
    TResult Function(signUpSuccessState value)? success,
    TResult Function(signUpErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class signUpSuccessState implements SignupState {
  const factory signUpSuccessState() = _$signUpSuccessStateImpl;
}

/// @nodoc
abstract class _$$signUpErrorStateImplCopyWith<$Res> {
  factory _$$signUpErrorStateImplCopyWith(_$signUpErrorStateImpl value,
          $Res Function(_$signUpErrorStateImpl) then) =
      __$$signUpErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorHandler error});
}

/// @nodoc
class __$$signUpErrorStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$signUpErrorStateImpl>
    implements _$$signUpErrorStateImplCopyWith<$Res> {
  __$$signUpErrorStateImplCopyWithImpl(_$signUpErrorStateImpl _value,
      $Res Function(_$signUpErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$signUpErrorStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorHandler,
    ));
  }
}

/// @nodoc

class _$signUpErrorStateImpl implements signUpErrorState {
  const _$signUpErrorStateImpl({required this.error});

  @override
  final ApiErrorHandler error;

  @override
  String toString() {
    return 'SignupState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$signUpErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$signUpErrorStateImplCopyWith<_$signUpErrorStateImpl> get copyWith =>
      __$$signUpErrorStateImplCopyWithImpl<_$signUpErrorStateImpl>(
          this, _$identity);

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
    required TResult Function(signUpInitialState value) initial,
    required TResult Function(signUpLoadingState value) loading,
    required TResult Function(signUpSuccessState value) success,
    required TResult Function(signUpErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(signUpInitialState value)? initial,
    TResult? Function(signUpLoadingState value)? loading,
    TResult? Function(signUpSuccessState value)? success,
    TResult? Function(signUpErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(signUpInitialState value)? initial,
    TResult Function(signUpLoadingState value)? loading,
    TResult Function(signUpSuccessState value)? success,
    TResult Function(signUpErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class signUpErrorState implements SignupState {
  const factory signUpErrorState({required final ApiErrorHandler error}) =
      _$signUpErrorStateImpl;

  ApiErrorHandler get error;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$signUpErrorStateImplCopyWith<_$signUpErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
