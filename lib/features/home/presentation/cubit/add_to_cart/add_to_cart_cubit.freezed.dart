// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddToCartState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String planId) loading,
    required TResult Function(T cartItem) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String planId)? loading,
    TResult? Function(T cartItem)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String planId)? loading,
    TResult Function(T cartItem)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCartInitail<T> value) initial,
    required TResult Function(AddToCartLoading<T> value) loading,
    required TResult Function(AddToCartSuccess<T> value) success,
    required TResult Function(AddToCartError<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCartInitail<T> value)? initial,
    TResult? Function(AddToCartLoading<T> value)? loading,
    TResult? Function(AddToCartSuccess<T> value)? success,
    TResult? Function(AddToCartError<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCartInitail<T> value)? initial,
    TResult Function(AddToCartLoading<T> value)? loading,
    TResult Function(AddToCartSuccess<T> value)? success,
    TResult Function(AddToCartError<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToCartStateCopyWith<T, $Res> {
  factory $AddToCartStateCopyWith(
          AddToCartState<T> value, $Res Function(AddToCartState<T>) then) =
      _$AddToCartStateCopyWithImpl<T, $Res, AddToCartState<T>>;
}

/// @nodoc
class _$AddToCartStateCopyWithImpl<T, $Res, $Val extends AddToCartState<T>>
    implements $AddToCartStateCopyWith<T, $Res> {
  _$AddToCartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddToCartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddToCartInitailImplCopyWith<T, $Res> {
  factory _$$AddToCartInitailImplCopyWith(_$AddToCartInitailImpl<T> value,
          $Res Function(_$AddToCartInitailImpl<T>) then) =
      __$$AddToCartInitailImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AddToCartInitailImplCopyWithImpl<T, $Res>
    extends _$AddToCartStateCopyWithImpl<T, $Res, _$AddToCartInitailImpl<T>>
    implements _$$AddToCartInitailImplCopyWith<T, $Res> {
  __$$AddToCartInitailImplCopyWithImpl(_$AddToCartInitailImpl<T> _value,
      $Res Function(_$AddToCartInitailImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddToCartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddToCartInitailImpl<T> implements AddToCartInitail<T> {
  const _$AddToCartInitailImpl();

  @override
  String toString() {
    return 'AddToCartState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartInitailImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String planId) loading,
    required TResult Function(T cartItem) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String planId)? loading,
    TResult? Function(T cartItem)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String planId)? loading,
    TResult Function(T cartItem)? success,
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
    required TResult Function(AddToCartInitail<T> value) initial,
    required TResult Function(AddToCartLoading<T> value) loading,
    required TResult Function(AddToCartSuccess<T> value) success,
    required TResult Function(AddToCartError<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCartInitail<T> value)? initial,
    TResult? Function(AddToCartLoading<T> value)? loading,
    TResult? Function(AddToCartSuccess<T> value)? success,
    TResult? Function(AddToCartError<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCartInitail<T> value)? initial,
    TResult Function(AddToCartLoading<T> value)? loading,
    TResult Function(AddToCartSuccess<T> value)? success,
    TResult Function(AddToCartError<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AddToCartInitail<T> implements AddToCartState<T> {
  const factory AddToCartInitail() = _$AddToCartInitailImpl<T>;
}

/// @nodoc
abstract class _$$AddToCartLoadingImplCopyWith<T, $Res> {
  factory _$$AddToCartLoadingImplCopyWith(_$AddToCartLoadingImpl<T> value,
          $Res Function(_$AddToCartLoadingImpl<T>) then) =
      __$$AddToCartLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String planId});
}

/// @nodoc
class __$$AddToCartLoadingImplCopyWithImpl<T, $Res>
    extends _$AddToCartStateCopyWithImpl<T, $Res, _$AddToCartLoadingImpl<T>>
    implements _$$AddToCartLoadingImplCopyWith<T, $Res> {
  __$$AddToCartLoadingImplCopyWithImpl(_$AddToCartLoadingImpl<T> _value,
      $Res Function(_$AddToCartLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddToCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planId = null,
  }) {
    return _then(_$AddToCartLoadingImpl<T>(
      planId: null == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddToCartLoadingImpl<T> implements AddToCartLoading<T> {
  const _$AddToCartLoadingImpl({required this.planId});

  @override
  final String planId;

  @override
  String toString() {
    return 'AddToCartState<$T>.loading(planId: $planId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartLoadingImpl<T> &&
            (identical(other.planId, planId) || other.planId == planId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, planId);

  /// Create a copy of AddToCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartLoadingImplCopyWith<T, _$AddToCartLoadingImpl<T>> get copyWith =>
      __$$AddToCartLoadingImplCopyWithImpl<T, _$AddToCartLoadingImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String planId) loading,
    required TResult Function(T cartItem) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return loading(planId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String planId)? loading,
    TResult? Function(T cartItem)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return loading?.call(planId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String planId)? loading,
    TResult Function(T cartItem)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(planId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCartInitail<T> value) initial,
    required TResult Function(AddToCartLoading<T> value) loading,
    required TResult Function(AddToCartSuccess<T> value) success,
    required TResult Function(AddToCartError<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCartInitail<T> value)? initial,
    TResult? Function(AddToCartLoading<T> value)? loading,
    TResult? Function(AddToCartSuccess<T> value)? success,
    TResult? Function(AddToCartError<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCartInitail<T> value)? initial,
    TResult Function(AddToCartLoading<T> value)? loading,
    TResult Function(AddToCartSuccess<T> value)? success,
    TResult Function(AddToCartError<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AddToCartLoading<T> implements AddToCartState<T> {
  const factory AddToCartLoading({required final String planId}) =
      _$AddToCartLoadingImpl<T>;

  String get planId;

  /// Create a copy of AddToCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToCartLoadingImplCopyWith<T, _$AddToCartLoadingImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToCartSuccessImplCopyWith<T, $Res> {
  factory _$$AddToCartSuccessImplCopyWith(_$AddToCartSuccessImpl<T> value,
          $Res Function(_$AddToCartSuccessImpl<T>) then) =
      __$$AddToCartSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T cartItem});
}

/// @nodoc
class __$$AddToCartSuccessImplCopyWithImpl<T, $Res>
    extends _$AddToCartStateCopyWithImpl<T, $Res, _$AddToCartSuccessImpl<T>>
    implements _$$AddToCartSuccessImplCopyWith<T, $Res> {
  __$$AddToCartSuccessImplCopyWithImpl(_$AddToCartSuccessImpl<T> _value,
      $Res Function(_$AddToCartSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddToCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = freezed,
  }) {
    return _then(_$AddToCartSuccessImpl<T>(
      freezed == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AddToCartSuccessImpl<T> implements AddToCartSuccess<T> {
  const _$AddToCartSuccessImpl(this.cartItem);

  @override
  final T cartItem;

  @override
  String toString() {
    return 'AddToCartState<$T>.success(cartItem: $cartItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.cartItem, cartItem));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cartItem));

  /// Create a copy of AddToCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartSuccessImplCopyWith<T, _$AddToCartSuccessImpl<T>> get copyWith =>
      __$$AddToCartSuccessImplCopyWithImpl<T, _$AddToCartSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String planId) loading,
    required TResult Function(T cartItem) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return success(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String planId)? loading,
    TResult? Function(T cartItem)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return success?.call(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String planId)? loading,
    TResult Function(T cartItem)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(cartItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCartInitail<T> value) initial,
    required TResult Function(AddToCartLoading<T> value) loading,
    required TResult Function(AddToCartSuccess<T> value) success,
    required TResult Function(AddToCartError<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCartInitail<T> value)? initial,
    TResult? Function(AddToCartLoading<T> value)? loading,
    TResult? Function(AddToCartSuccess<T> value)? success,
    TResult? Function(AddToCartError<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCartInitail<T> value)? initial,
    TResult Function(AddToCartLoading<T> value)? loading,
    TResult Function(AddToCartSuccess<T> value)? success,
    TResult Function(AddToCartError<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AddToCartSuccess<T> implements AddToCartState<T> {
  const factory AddToCartSuccess(final T cartItem) = _$AddToCartSuccessImpl<T>;

  T get cartItem;

  /// Create a copy of AddToCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToCartSuccessImplCopyWith<T, _$AddToCartSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToCartErrorImplCopyWith<T, $Res> {
  factory _$$AddToCartErrorImplCopyWith(_$AddToCartErrorImpl<T> value,
          $Res Function(_$AddToCartErrorImpl<T>) then) =
      __$$AddToCartErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorHandler error});
}

/// @nodoc
class __$$AddToCartErrorImplCopyWithImpl<T, $Res>
    extends _$AddToCartStateCopyWithImpl<T, $Res, _$AddToCartErrorImpl<T>>
    implements _$$AddToCartErrorImplCopyWith<T, $Res> {
  __$$AddToCartErrorImplCopyWithImpl(_$AddToCartErrorImpl<T> _value,
      $Res Function(_$AddToCartErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddToCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AddToCartErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorHandler,
    ));
  }
}

/// @nodoc

class _$AddToCartErrorImpl<T> implements AddToCartError<T> {
  const _$AddToCartErrorImpl({required this.error});

  @override
  final ApiErrorHandler error;

  @override
  String toString() {
    return 'AddToCartState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AddToCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartErrorImplCopyWith<T, _$AddToCartErrorImpl<T>> get copyWith =>
      __$$AddToCartErrorImplCopyWithImpl<T, _$AddToCartErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String planId) loading,
    required TResult Function(T cartItem) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String planId)? loading,
    TResult? Function(T cartItem)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String planId)? loading,
    TResult Function(T cartItem)? success,
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
    required TResult Function(AddToCartInitail<T> value) initial,
    required TResult Function(AddToCartLoading<T> value) loading,
    required TResult Function(AddToCartSuccess<T> value) success,
    required TResult Function(AddToCartError<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCartInitail<T> value)? initial,
    TResult? Function(AddToCartLoading<T> value)? loading,
    TResult? Function(AddToCartSuccess<T> value)? success,
    TResult? Function(AddToCartError<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCartInitail<T> value)? initial,
    TResult Function(AddToCartLoading<T> value)? loading,
    TResult Function(AddToCartSuccess<T> value)? success,
    TResult Function(AddToCartError<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AddToCartError<T> implements AddToCartState<T> {
  const factory AddToCartError({required final ApiErrorHandler error}) =
      _$AddToCartErrorImpl<T>;

  ApiErrorHandler get error;

  /// Create a copy of AddToCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToCartErrorImplCopyWith<T, _$AddToCartErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
