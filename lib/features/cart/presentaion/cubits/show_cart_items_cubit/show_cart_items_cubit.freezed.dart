// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_cart_items_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShowCartItemsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T cartItems, int? totalPrice) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T cartItems, int? totalPrice)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T cartItems, int? totalPrice)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ShowCartItemsLoading<T> value) loading,
    required TResult Function(ShowCartItemsSuccess<T> value) success,
    required TResult Function(ShowCartItemsFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ShowCartItemsLoading<T> value)? loading,
    TResult? Function(ShowCartItemsSuccess<T> value)? success,
    TResult? Function(ShowCartItemsFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ShowCartItemsLoading<T> value)? loading,
    TResult Function(ShowCartItemsSuccess<T> value)? success,
    TResult Function(ShowCartItemsFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowCartItemsStateCopyWith<T, $Res> {
  factory $ShowCartItemsStateCopyWith(ShowCartItemsState<T> value,
          $Res Function(ShowCartItemsState<T>) then) =
      _$ShowCartItemsStateCopyWithImpl<T, $Res, ShowCartItemsState<T>>;
}

/// @nodoc
class _$ShowCartItemsStateCopyWithImpl<T, $Res,
        $Val extends ShowCartItemsState<T>>
    implements $ShowCartItemsStateCopyWith<T, $Res> {
  _$ShowCartItemsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShowCartItemsState
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
    extends _$ShowCartItemsStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ShowCartItemsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ShowCartItemsState<$T>.initial()';
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
    required TResult Function(T cartItems, int? totalPrice) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T cartItems, int? totalPrice)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T cartItems, int? totalPrice)? success,
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
    required TResult Function(ShowCartItemsLoading<T> value) loading,
    required TResult Function(ShowCartItemsSuccess<T> value) success,
    required TResult Function(ShowCartItemsFailure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ShowCartItemsLoading<T> value)? loading,
    TResult? Function(ShowCartItemsSuccess<T> value)? success,
    TResult? Function(ShowCartItemsFailure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ShowCartItemsLoading<T> value)? loading,
    TResult Function(ShowCartItemsSuccess<T> value)? success,
    TResult Function(ShowCartItemsFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements ShowCartItemsState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$ShowCartItemsLoadingImplCopyWith<T, $Res> {
  factory _$$ShowCartItemsLoadingImplCopyWith(
          _$ShowCartItemsLoadingImpl<T> value,
          $Res Function(_$ShowCartItemsLoadingImpl<T>) then) =
      __$$ShowCartItemsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ShowCartItemsLoadingImplCopyWithImpl<T, $Res>
    extends _$ShowCartItemsStateCopyWithImpl<T, $Res,
        _$ShowCartItemsLoadingImpl<T>>
    implements _$$ShowCartItemsLoadingImplCopyWith<T, $Res> {
  __$$ShowCartItemsLoadingImplCopyWithImpl(_$ShowCartItemsLoadingImpl<T> _value,
      $Res Function(_$ShowCartItemsLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ShowCartItemsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowCartItemsLoadingImpl<T> implements ShowCartItemsLoading<T> {
  const _$ShowCartItemsLoadingImpl();

  @override
  String toString() {
    return 'ShowCartItemsState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowCartItemsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T cartItems, int? totalPrice) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T cartItems, int? totalPrice)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T cartItems, int? totalPrice)? success,
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
    required TResult Function(ShowCartItemsLoading<T> value) loading,
    required TResult Function(ShowCartItemsSuccess<T> value) success,
    required TResult Function(ShowCartItemsFailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ShowCartItemsLoading<T> value)? loading,
    TResult? Function(ShowCartItemsSuccess<T> value)? success,
    TResult? Function(ShowCartItemsFailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ShowCartItemsLoading<T> value)? loading,
    TResult Function(ShowCartItemsSuccess<T> value)? success,
    TResult Function(ShowCartItemsFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ShowCartItemsLoading<T> implements ShowCartItemsState<T> {
  const factory ShowCartItemsLoading() = _$ShowCartItemsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ShowCartItemsSuccessImplCopyWith<T, $Res> {
  factory _$$ShowCartItemsSuccessImplCopyWith(
          _$ShowCartItemsSuccessImpl<T> value,
          $Res Function(_$ShowCartItemsSuccessImpl<T>) then) =
      __$$ShowCartItemsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T cartItems, int? totalPrice});
}

/// @nodoc
class __$$ShowCartItemsSuccessImplCopyWithImpl<T, $Res>
    extends _$ShowCartItemsStateCopyWithImpl<T, $Res,
        _$ShowCartItemsSuccessImpl<T>>
    implements _$$ShowCartItemsSuccessImplCopyWith<T, $Res> {
  __$$ShowCartItemsSuccessImplCopyWithImpl(_$ShowCartItemsSuccessImpl<T> _value,
      $Res Function(_$ShowCartItemsSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ShowCartItemsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_$ShowCartItemsSuccessImpl<T>(
      freezed == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as T,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ShowCartItemsSuccessImpl<T> implements ShowCartItemsSuccess<T> {
  const _$ShowCartItemsSuccessImpl(this.cartItems, {this.totalPrice});

  @override
  final T cartItems;
  @override
  final int? totalPrice;

  @override
  String toString() {
    return 'ShowCartItemsState<$T>.success(cartItems: $cartItems, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowCartItemsSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.cartItems, cartItems) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(cartItems), totalPrice);

  /// Create a copy of ShowCartItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowCartItemsSuccessImplCopyWith<T, _$ShowCartItemsSuccessImpl<T>>
      get copyWith => __$$ShowCartItemsSuccessImplCopyWithImpl<T,
          _$ShowCartItemsSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T cartItems, int? totalPrice) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return success(cartItems, totalPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T cartItems, int? totalPrice)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return success?.call(cartItems, totalPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T cartItems, int? totalPrice)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(cartItems, totalPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ShowCartItemsLoading<T> value) loading,
    required TResult Function(ShowCartItemsSuccess<T> value) success,
    required TResult Function(ShowCartItemsFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ShowCartItemsLoading<T> value)? loading,
    TResult? Function(ShowCartItemsSuccess<T> value)? success,
    TResult? Function(ShowCartItemsFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ShowCartItemsLoading<T> value)? loading,
    TResult Function(ShowCartItemsSuccess<T> value)? success,
    TResult Function(ShowCartItemsFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ShowCartItemsSuccess<T> implements ShowCartItemsState<T> {
  const factory ShowCartItemsSuccess(final T cartItems,
      {final int? totalPrice}) = _$ShowCartItemsSuccessImpl<T>;

  T get cartItems;
  int? get totalPrice;

  /// Create a copy of ShowCartItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowCartItemsSuccessImplCopyWith<T, _$ShowCartItemsSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowCartItemsFailureImplCopyWith<T, $Res> {
  factory _$$ShowCartItemsFailureImplCopyWith(
          _$ShowCartItemsFailureImpl<T> value,
          $Res Function(_$ShowCartItemsFailureImpl<T>) then) =
      __$$ShowCartItemsFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorHandler error});
}

/// @nodoc
class __$$ShowCartItemsFailureImplCopyWithImpl<T, $Res>
    extends _$ShowCartItemsStateCopyWithImpl<T, $Res,
        _$ShowCartItemsFailureImpl<T>>
    implements _$$ShowCartItemsFailureImplCopyWith<T, $Res> {
  __$$ShowCartItemsFailureImplCopyWithImpl(_$ShowCartItemsFailureImpl<T> _value,
      $Res Function(_$ShowCartItemsFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ShowCartItemsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ShowCartItemsFailureImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorHandler,
    ));
  }
}

/// @nodoc

class _$ShowCartItemsFailureImpl<T> implements ShowCartItemsFailure<T> {
  const _$ShowCartItemsFailureImpl({required this.error});

  @override
  final ApiErrorHandler error;

  @override
  String toString() {
    return 'ShowCartItemsState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowCartItemsFailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ShowCartItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowCartItemsFailureImplCopyWith<T, _$ShowCartItemsFailureImpl<T>>
      get copyWith => __$$ShowCartItemsFailureImplCopyWithImpl<T,
          _$ShowCartItemsFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T cartItems, int? totalPrice) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T cartItems, int? totalPrice)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T cartItems, int? totalPrice)? success,
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
    required TResult Function(ShowCartItemsLoading<T> value) loading,
    required TResult Function(ShowCartItemsSuccess<T> value) success,
    required TResult Function(ShowCartItemsFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ShowCartItemsLoading<T> value)? loading,
    TResult? Function(ShowCartItemsSuccess<T> value)? success,
    TResult? Function(ShowCartItemsFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ShowCartItemsLoading<T> value)? loading,
    TResult Function(ShowCartItemsSuccess<T> value)? success,
    TResult Function(ShowCartItemsFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ShowCartItemsFailure<T> implements ShowCartItemsState<T> {
  const factory ShowCartItemsFailure({required final ApiErrorHandler error}) =
      _$ShowCartItemsFailureImpl<T>;

  ApiErrorHandler get error;

  /// Create a copy of ShowCartItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowCartItemsFailureImplCopyWith<T, _$ShowCartItemsFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
