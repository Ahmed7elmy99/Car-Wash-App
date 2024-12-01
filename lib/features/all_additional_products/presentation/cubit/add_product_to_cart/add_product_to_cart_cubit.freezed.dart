// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_product_to_cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddProductToCartState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String productId) loading,
    required TResult Function(T cartItem) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String productId)? loading,
    TResult? Function(T cartItem)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String productId)? loading,
    TResult Function(T cartItem)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddProductToCartInitial<T> value) initial,
    required TResult Function(AddProductToCartLoading<T> value) loading,
    required TResult Function(AddProductToCartSuccess<T> value) success,
    required TResult Function(AddProductToCartError<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddProductToCartInitial<T> value)? initial,
    TResult? Function(AddProductToCartLoading<T> value)? loading,
    TResult? Function(AddProductToCartSuccess<T> value)? success,
    TResult? Function(AddProductToCartError<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddProductToCartInitial<T> value)? initial,
    TResult Function(AddProductToCartLoading<T> value)? loading,
    TResult Function(AddProductToCartSuccess<T> value)? success,
    TResult Function(AddProductToCartError<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductToCartStateCopyWith<T, $Res> {
  factory $AddProductToCartStateCopyWith(AddProductToCartState<T> value,
          $Res Function(AddProductToCartState<T>) then) =
      _$AddProductToCartStateCopyWithImpl<T, $Res, AddProductToCartState<T>>;
}

/// @nodoc
class _$AddProductToCartStateCopyWithImpl<T, $Res,
        $Val extends AddProductToCartState<T>>
    implements $AddProductToCartStateCopyWith<T, $Res> {
  _$AddProductToCartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddProductToCartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddProductToCartInitialImplCopyWith<T, $Res> {
  factory _$$AddProductToCartInitialImplCopyWith(
          _$AddProductToCartInitialImpl<T> value,
          $Res Function(_$AddProductToCartInitialImpl<T>) then) =
      __$$AddProductToCartInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AddProductToCartInitialImplCopyWithImpl<T, $Res>
    extends _$AddProductToCartStateCopyWithImpl<T, $Res,
        _$AddProductToCartInitialImpl<T>>
    implements _$$AddProductToCartInitialImplCopyWith<T, $Res> {
  __$$AddProductToCartInitialImplCopyWithImpl(
      _$AddProductToCartInitialImpl<T> _value,
      $Res Function(_$AddProductToCartInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddProductToCartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddProductToCartInitialImpl<T> implements AddProductToCartInitial<T> {
  const _$AddProductToCartInitialImpl();

  @override
  String toString() {
    return 'AddProductToCartState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToCartInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String productId) loading,
    required TResult Function(T cartItem) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String productId)? loading,
    TResult? Function(T cartItem)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String productId)? loading,
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
    required TResult Function(AddProductToCartInitial<T> value) initial,
    required TResult Function(AddProductToCartLoading<T> value) loading,
    required TResult Function(AddProductToCartSuccess<T> value) success,
    required TResult Function(AddProductToCartError<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddProductToCartInitial<T> value)? initial,
    TResult? Function(AddProductToCartLoading<T> value)? loading,
    TResult? Function(AddProductToCartSuccess<T> value)? success,
    TResult? Function(AddProductToCartError<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddProductToCartInitial<T> value)? initial,
    TResult Function(AddProductToCartLoading<T> value)? loading,
    TResult Function(AddProductToCartSuccess<T> value)? success,
    TResult Function(AddProductToCartError<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AddProductToCartInitial<T> implements AddProductToCartState<T> {
  const factory AddProductToCartInitial() = _$AddProductToCartInitialImpl<T>;
}

/// @nodoc
abstract class _$$AddProductToCartLoadingImplCopyWith<T, $Res> {
  factory _$$AddProductToCartLoadingImplCopyWith(
          _$AddProductToCartLoadingImpl<T> value,
          $Res Function(_$AddProductToCartLoadingImpl<T>) then) =
      __$$AddProductToCartLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$AddProductToCartLoadingImplCopyWithImpl<T, $Res>
    extends _$AddProductToCartStateCopyWithImpl<T, $Res,
        _$AddProductToCartLoadingImpl<T>>
    implements _$$AddProductToCartLoadingImplCopyWith<T, $Res> {
  __$$AddProductToCartLoadingImplCopyWithImpl(
      _$AddProductToCartLoadingImpl<T> _value,
      $Res Function(_$AddProductToCartLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddProductToCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$AddProductToCartLoadingImpl<T>(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddProductToCartLoadingImpl<T> implements AddProductToCartLoading<T> {
  const _$AddProductToCartLoadingImpl({required this.productId});

  @override
  final String productId;

  @override
  String toString() {
    return 'AddProductToCartState<$T>.loading(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToCartLoadingImpl<T> &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  /// Create a copy of AddProductToCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToCartLoadingImplCopyWith<T, _$AddProductToCartLoadingImpl<T>>
      get copyWith => __$$AddProductToCartLoadingImplCopyWithImpl<T,
          _$AddProductToCartLoadingImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String productId) loading,
    required TResult Function(T cartItem) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return loading(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String productId)? loading,
    TResult? Function(T cartItem)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return loading?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String productId)? loading,
    TResult Function(T cartItem)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddProductToCartInitial<T> value) initial,
    required TResult Function(AddProductToCartLoading<T> value) loading,
    required TResult Function(AddProductToCartSuccess<T> value) success,
    required TResult Function(AddProductToCartError<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddProductToCartInitial<T> value)? initial,
    TResult? Function(AddProductToCartLoading<T> value)? loading,
    TResult? Function(AddProductToCartSuccess<T> value)? success,
    TResult? Function(AddProductToCartError<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddProductToCartInitial<T> value)? initial,
    TResult Function(AddProductToCartLoading<T> value)? loading,
    TResult Function(AddProductToCartSuccess<T> value)? success,
    TResult Function(AddProductToCartError<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AddProductToCartLoading<T> implements AddProductToCartState<T> {
  const factory AddProductToCartLoading({required final String productId}) =
      _$AddProductToCartLoadingImpl<T>;

  String get productId;

  /// Create a copy of AddProductToCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductToCartLoadingImplCopyWith<T, _$AddProductToCartLoadingImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductToCartSuccessImplCopyWith<T, $Res> {
  factory _$$AddProductToCartSuccessImplCopyWith(
          _$AddProductToCartSuccessImpl<T> value,
          $Res Function(_$AddProductToCartSuccessImpl<T>) then) =
      __$$AddProductToCartSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T cartItem});
}

/// @nodoc
class __$$AddProductToCartSuccessImplCopyWithImpl<T, $Res>
    extends _$AddProductToCartStateCopyWithImpl<T, $Res,
        _$AddProductToCartSuccessImpl<T>>
    implements _$$AddProductToCartSuccessImplCopyWith<T, $Res> {
  __$$AddProductToCartSuccessImplCopyWithImpl(
      _$AddProductToCartSuccessImpl<T> _value,
      $Res Function(_$AddProductToCartSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddProductToCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = freezed,
  }) {
    return _then(_$AddProductToCartSuccessImpl<T>(
      freezed == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AddProductToCartSuccessImpl<T> implements AddProductToCartSuccess<T> {
  const _$AddProductToCartSuccessImpl(this.cartItem);

  @override
  final T cartItem;

  @override
  String toString() {
    return 'AddProductToCartState<$T>.success(cartItem: $cartItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToCartSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.cartItem, cartItem));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cartItem));

  /// Create a copy of AddProductToCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToCartSuccessImplCopyWith<T, _$AddProductToCartSuccessImpl<T>>
      get copyWith => __$$AddProductToCartSuccessImplCopyWithImpl<T,
          _$AddProductToCartSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String productId) loading,
    required TResult Function(T cartItem) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return success(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String productId)? loading,
    TResult? Function(T cartItem)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return success?.call(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String productId)? loading,
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
    required TResult Function(AddProductToCartInitial<T> value) initial,
    required TResult Function(AddProductToCartLoading<T> value) loading,
    required TResult Function(AddProductToCartSuccess<T> value) success,
    required TResult Function(AddProductToCartError<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddProductToCartInitial<T> value)? initial,
    TResult? Function(AddProductToCartLoading<T> value)? loading,
    TResult? Function(AddProductToCartSuccess<T> value)? success,
    TResult? Function(AddProductToCartError<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddProductToCartInitial<T> value)? initial,
    TResult Function(AddProductToCartLoading<T> value)? loading,
    TResult Function(AddProductToCartSuccess<T> value)? success,
    TResult Function(AddProductToCartError<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AddProductToCartSuccess<T> implements AddProductToCartState<T> {
  const factory AddProductToCartSuccess(final T cartItem) =
      _$AddProductToCartSuccessImpl<T>;

  T get cartItem;

  /// Create a copy of AddProductToCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductToCartSuccessImplCopyWith<T, _$AddProductToCartSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductToCartErrorImplCopyWith<T, $Res> {
  factory _$$AddProductToCartErrorImplCopyWith(
          _$AddProductToCartErrorImpl<T> value,
          $Res Function(_$AddProductToCartErrorImpl<T>) then) =
      __$$AddProductToCartErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorHandler error});
}

/// @nodoc
class __$$AddProductToCartErrorImplCopyWithImpl<T, $Res>
    extends _$AddProductToCartStateCopyWithImpl<T, $Res,
        _$AddProductToCartErrorImpl<T>>
    implements _$$AddProductToCartErrorImplCopyWith<T, $Res> {
  __$$AddProductToCartErrorImplCopyWithImpl(
      _$AddProductToCartErrorImpl<T> _value,
      $Res Function(_$AddProductToCartErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddProductToCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AddProductToCartErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorHandler,
    ));
  }
}

/// @nodoc

class _$AddProductToCartErrorImpl<T> implements AddProductToCartError<T> {
  const _$AddProductToCartErrorImpl({required this.error});

  @override
  final ApiErrorHandler error;

  @override
  String toString() {
    return 'AddProductToCartState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToCartErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AddProductToCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToCartErrorImplCopyWith<T, _$AddProductToCartErrorImpl<T>>
      get copyWith => __$$AddProductToCartErrorImplCopyWithImpl<T,
          _$AddProductToCartErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String productId) loading,
    required TResult Function(T cartItem) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String productId)? loading,
    TResult? Function(T cartItem)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String productId)? loading,
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
    required TResult Function(AddProductToCartInitial<T> value) initial,
    required TResult Function(AddProductToCartLoading<T> value) loading,
    required TResult Function(AddProductToCartSuccess<T> value) success,
    required TResult Function(AddProductToCartError<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddProductToCartInitial<T> value)? initial,
    TResult? Function(AddProductToCartLoading<T> value)? loading,
    TResult? Function(AddProductToCartSuccess<T> value)? success,
    TResult? Function(AddProductToCartError<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddProductToCartInitial<T> value)? initial,
    TResult Function(AddProductToCartLoading<T> value)? loading,
    TResult Function(AddProductToCartSuccess<T> value)? success,
    TResult Function(AddProductToCartError<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AddProductToCartError<T> implements AddProductToCartState<T> {
  const factory AddProductToCartError({required final ApiErrorHandler error}) =
      _$AddProductToCartErrorImpl<T>;

  ApiErrorHandler get error;

  /// Create a copy of AddProductToCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductToCartErrorImplCopyWith<T, _$AddProductToCartErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
