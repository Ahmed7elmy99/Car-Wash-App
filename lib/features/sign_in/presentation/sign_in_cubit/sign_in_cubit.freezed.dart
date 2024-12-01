// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T user) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T user)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T user)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignInLoading<T> value) loading,
    required TResult Function(SignInSuccess<T> value) success,
    required TResult Function(SignInFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignInLoading<T> value)? loading,
    TResult? Function(SignInSuccess<T> value)? success,
    TResult? Function(SignInFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignInLoading<T> value)? loading,
    TResult Function(SignInSuccess<T> value)? success,
    TResult Function(SignInFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<T, $Res> {
  factory $SignInStateCopyWith(
          SignInState<T> value, $Res Function(SignInState<T>) then) =
      _$SignInStateCopyWithImpl<T, $Res, SignInState<T>>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<T, $Res, $Val extends SignInState<T>>
    implements $SignInStateCopyWith<T, $Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInState
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
    extends _$SignInStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignInState<$T>.initial()';
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
    required TResult Function(T user) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T user)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T user)? success,
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
    required TResult Function(SignInLoading<T> value) loading,
    required TResult Function(SignInSuccess<T> value) success,
    required TResult Function(SignInFailure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignInLoading<T> value)? loading,
    TResult? Function(SignInSuccess<T> value)? success,
    TResult? Function(SignInFailure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignInLoading<T> value)? loading,
    TResult Function(SignInSuccess<T> value)? success,
    TResult Function(SignInFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SignInState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$SignInLoadingImplCopyWith<T, $Res> {
  factory _$$SignInLoadingImplCopyWith(_$SignInLoadingImpl<T> value,
          $Res Function(_$SignInLoadingImpl<T>) then) =
      __$$SignInLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SignInLoadingImplCopyWithImpl<T, $Res>
    extends _$SignInStateCopyWithImpl<T, $Res, _$SignInLoadingImpl<T>>
    implements _$$SignInLoadingImplCopyWith<T, $Res> {
  __$$SignInLoadingImplCopyWithImpl(_$SignInLoadingImpl<T> _value,
      $Res Function(_$SignInLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInLoadingImpl<T> implements SignInLoading<T> {
  const _$SignInLoadingImpl();

  @override
  String toString() {
    return 'SignInState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T user) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T user)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T user)? success,
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
    required TResult Function(SignInLoading<T> value) loading,
    required TResult Function(SignInSuccess<T> value) success,
    required TResult Function(SignInFailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignInLoading<T> value)? loading,
    TResult? Function(SignInSuccess<T> value)? success,
    TResult? Function(SignInFailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignInLoading<T> value)? loading,
    TResult Function(SignInSuccess<T> value)? success,
    TResult Function(SignInFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignInLoading<T> implements SignInState<T> {
  const factory SignInLoading() = _$SignInLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SignInSuccessImplCopyWith<T, $Res> {
  factory _$$SignInSuccessImplCopyWith(_$SignInSuccessImpl<T> value,
          $Res Function(_$SignInSuccessImpl<T>) then) =
      __$$SignInSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T user});
}

/// @nodoc
class __$$SignInSuccessImplCopyWithImpl<T, $Res>
    extends _$SignInStateCopyWithImpl<T, $Res, _$SignInSuccessImpl<T>>
    implements _$$SignInSuccessImplCopyWith<T, $Res> {
  __$$SignInSuccessImplCopyWithImpl(_$SignInSuccessImpl<T> _value,
      $Res Function(_$SignInSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$SignInSuccessImpl<T>(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SignInSuccessImpl<T> implements SignInSuccess<T> {
  const _$SignInSuccessImpl(this.user);

  @override
  final T user;

  @override
  String toString() {
    return 'SignInState<$T>.success(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInSuccessImplCopyWith<T, _$SignInSuccessImpl<T>> get copyWith =>
      __$$SignInSuccessImplCopyWithImpl<T, _$SignInSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T user) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T user)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T user)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignInLoading<T> value) loading,
    required TResult Function(SignInSuccess<T> value) success,
    required TResult Function(SignInFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignInLoading<T> value)? loading,
    TResult? Function(SignInSuccess<T> value)? success,
    TResult? Function(SignInFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignInLoading<T> value)? loading,
    TResult Function(SignInSuccess<T> value)? success,
    TResult Function(SignInFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SignInSuccess<T> implements SignInState<T> {
  const factory SignInSuccess(final T user) = _$SignInSuccessImpl<T>;

  T get user;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInSuccessImplCopyWith<T, _$SignInSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInFailureImplCopyWith<T, $Res> {
  factory _$$SignInFailureImplCopyWith(_$SignInFailureImpl<T> value,
          $Res Function(_$SignInFailureImpl<T>) then) =
      __$$SignInFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorHandler error});
}

/// @nodoc
class __$$SignInFailureImplCopyWithImpl<T, $Res>
    extends _$SignInStateCopyWithImpl<T, $Res, _$SignInFailureImpl<T>>
    implements _$$SignInFailureImplCopyWith<T, $Res> {
  __$$SignInFailureImplCopyWithImpl(_$SignInFailureImpl<T> _value,
      $Res Function(_$SignInFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SignInFailureImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorHandler,
    ));
  }
}

/// @nodoc

class _$SignInFailureImpl<T> implements SignInFailure<T> {
  const _$SignInFailureImpl({required this.error});

  @override
  final ApiErrorHandler error;

  @override
  String toString() {
    return 'SignInState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFailureImplCopyWith<T, _$SignInFailureImpl<T>> get copyWith =>
      __$$SignInFailureImplCopyWithImpl<T, _$SignInFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T user) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T user)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T user)? success,
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
    required TResult Function(SignInLoading<T> value) loading,
    required TResult Function(SignInSuccess<T> value) success,
    required TResult Function(SignInFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignInLoading<T> value)? loading,
    TResult? Function(SignInSuccess<T> value)? success,
    TResult? Function(SignInFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignInLoading<T> value)? loading,
    TResult Function(SignInSuccess<T> value)? success,
    TResult Function(SignInFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SignInFailure<T> implements SignInState<T> {
  const factory SignInFailure({required final ApiErrorHandler error}) =
      _$SignInFailureImpl<T>;

  ApiErrorHandler get error;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInFailureImplCopyWith<T, _$SignInFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
