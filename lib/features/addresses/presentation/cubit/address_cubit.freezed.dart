// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T addresses) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T addresses)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T addresses)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AddreessLoading<T> value) loading,
    required TResult Function(AddressSuccess<T> value) success,
    required TResult Function(AddressFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddreessLoading<T> value)? loading,
    TResult? Function(AddressSuccess<T> value)? success,
    TResult? Function(AddressFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddreessLoading<T> value)? loading,
    TResult Function(AddressSuccess<T> value)? success,
    TResult Function(AddressFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<T, $Res> {
  factory $AddressStateCopyWith(
          AddressState<T> value, $Res Function(AddressState<T>) then) =
      _$AddressStateCopyWithImpl<T, $Res, AddressState<T>>;
}

/// @nodoc
class _$AddressStateCopyWithImpl<T, $Res, $Val extends AddressState<T>>
    implements $AddressStateCopyWith<T, $Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressState
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
    extends _$AddressStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AddressState<$T>.initial()';
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
    required TResult Function(T addresses) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T addresses)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T addresses)? success,
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
    required TResult Function(AddreessLoading<T> value) loading,
    required TResult Function(AddressSuccess<T> value) success,
    required TResult Function(AddressFailure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddreessLoading<T> value)? loading,
    TResult? Function(AddressSuccess<T> value)? success,
    TResult? Function(AddressFailure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddreessLoading<T> value)? loading,
    TResult Function(AddressSuccess<T> value)? success,
    TResult Function(AddressFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements AddressState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$AddreessLoadingImplCopyWith<T, $Res> {
  factory _$$AddreessLoadingImplCopyWith(_$AddreessLoadingImpl<T> value,
          $Res Function(_$AddreessLoadingImpl<T>) then) =
      __$$AddreessLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AddreessLoadingImplCopyWithImpl<T, $Res>
    extends _$AddressStateCopyWithImpl<T, $Res, _$AddreessLoadingImpl<T>>
    implements _$$AddreessLoadingImplCopyWith<T, $Res> {
  __$$AddreessLoadingImplCopyWithImpl(_$AddreessLoadingImpl<T> _value,
      $Res Function(_$AddreessLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddreessLoadingImpl<T> implements AddreessLoading<T> {
  const _$AddreessLoadingImpl();

  @override
  String toString() {
    return 'AddressState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddreessLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T addresses) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T addresses)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T addresses)? success,
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
    required TResult Function(AddreessLoading<T> value) loading,
    required TResult Function(AddressSuccess<T> value) success,
    required TResult Function(AddressFailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddreessLoading<T> value)? loading,
    TResult? Function(AddressSuccess<T> value)? success,
    TResult? Function(AddressFailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddreessLoading<T> value)? loading,
    TResult Function(AddressSuccess<T> value)? success,
    TResult Function(AddressFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AddreessLoading<T> implements AddressState<T> {
  const factory AddreessLoading() = _$AddreessLoadingImpl<T>;
}

/// @nodoc
abstract class _$$AddressSuccessImplCopyWith<T, $Res> {
  factory _$$AddressSuccessImplCopyWith(_$AddressSuccessImpl<T> value,
          $Res Function(_$AddressSuccessImpl<T>) then) =
      __$$AddressSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T addresses});
}

/// @nodoc
class __$$AddressSuccessImplCopyWithImpl<T, $Res>
    extends _$AddressStateCopyWithImpl<T, $Res, _$AddressSuccessImpl<T>>
    implements _$$AddressSuccessImplCopyWith<T, $Res> {
  __$$AddressSuccessImplCopyWithImpl(_$AddressSuccessImpl<T> _value,
      $Res Function(_$AddressSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addresses = freezed,
  }) {
    return _then(_$AddressSuccessImpl<T>(
      freezed == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AddressSuccessImpl<T> implements AddressSuccess<T> {
  const _$AddressSuccessImpl(this.addresses);

  @override
  final T addresses;

  @override
  String toString() {
    return 'AddressState<$T>.success(addresses: $addresses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.addresses, addresses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(addresses));

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressSuccessImplCopyWith<T, _$AddressSuccessImpl<T>> get copyWith =>
      __$$AddressSuccessImplCopyWithImpl<T, _$AddressSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T addresses) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return success(addresses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T addresses)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return success?.call(addresses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T addresses)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(addresses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AddreessLoading<T> value) loading,
    required TResult Function(AddressSuccess<T> value) success,
    required TResult Function(AddressFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddreessLoading<T> value)? loading,
    TResult? Function(AddressSuccess<T> value)? success,
    TResult? Function(AddressFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddreessLoading<T> value)? loading,
    TResult Function(AddressSuccess<T> value)? success,
    TResult Function(AddressFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AddressSuccess<T> implements AddressState<T> {
  const factory AddressSuccess(final T addresses) = _$AddressSuccessImpl<T>;

  T get addresses;

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressSuccessImplCopyWith<T, _$AddressSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddressFailureImplCopyWith<T, $Res> {
  factory _$$AddressFailureImplCopyWith(_$AddressFailureImpl<T> value,
          $Res Function(_$AddressFailureImpl<T>) then) =
      __$$AddressFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorHandler error});
}

/// @nodoc
class __$$AddressFailureImplCopyWithImpl<T, $Res>
    extends _$AddressStateCopyWithImpl<T, $Res, _$AddressFailureImpl<T>>
    implements _$$AddressFailureImplCopyWith<T, $Res> {
  __$$AddressFailureImplCopyWithImpl(_$AddressFailureImpl<T> _value,
      $Res Function(_$AddressFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AddressFailureImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorHandler,
    ));
  }
}

/// @nodoc

class _$AddressFailureImpl<T> implements AddressFailure<T> {
  const _$AddressFailureImpl({required this.error});

  @override
  final ApiErrorHandler error;

  @override
  String toString() {
    return 'AddressState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressFailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressFailureImplCopyWith<T, _$AddressFailureImpl<T>> get copyWith =>
      __$$AddressFailureImplCopyWithImpl<T, _$AddressFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T addresses) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T addresses)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T addresses)? success,
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
    required TResult Function(AddreessLoading<T> value) loading,
    required TResult Function(AddressSuccess<T> value) success,
    required TResult Function(AddressFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AddreessLoading<T> value)? loading,
    TResult? Function(AddressSuccess<T> value)? success,
    TResult? Function(AddressFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AddreessLoading<T> value)? loading,
    TResult Function(AddressSuccess<T> value)? success,
    TResult Function(AddressFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AddressFailure<T> implements AddressState<T> {
  const factory AddressFailure({required final ApiErrorHandler error}) =
      _$AddressFailureImpl<T>;

  ApiErrorHandler get error;

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressFailureImplCopyWith<T, _$AddressFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
