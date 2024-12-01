// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OfferState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offerInitial,
    required TResult Function() offerLoading,
    required TResult Function(T offer) offerSuccess,
    required TResult Function(ApiErrorHandler error) offerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? offerInitial,
    TResult? Function()? offerLoading,
    TResult? Function(T offer)? offerSuccess,
    TResult? Function(ApiErrorHandler error)? offerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offerInitial,
    TResult Function()? offerLoading,
    TResult Function(T offer)? offerSuccess,
    TResult Function(ApiErrorHandler error)? offerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfferInitial<T> value) offerInitial,
    required TResult Function(OfferLoading<T> value) offerLoading,
    required TResult Function(OfferSuccess<T> value) offerSuccess,
    required TResult Function(OfferError<T> value) offerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfferInitial<T> value)? offerInitial,
    TResult? Function(OfferLoading<T> value)? offerLoading,
    TResult? Function(OfferSuccess<T> value)? offerSuccess,
    TResult? Function(OfferError<T> value)? offerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfferInitial<T> value)? offerInitial,
    TResult Function(OfferLoading<T> value)? offerLoading,
    TResult Function(OfferSuccess<T> value)? offerSuccess,
    TResult Function(OfferError<T> value)? offerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferStateCopyWith<T, $Res> {
  factory $OfferStateCopyWith(
          OfferState<T> value, $Res Function(OfferState<T>) then) =
      _$OfferStateCopyWithImpl<T, $Res, OfferState<T>>;
}

/// @nodoc
class _$OfferStateCopyWithImpl<T, $Res, $Val extends OfferState<T>>
    implements $OfferStateCopyWith<T, $Res> {
  _$OfferStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfferState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OfferInitialImplCopyWith<T, $Res> {
  factory _$$OfferInitialImplCopyWith(_$OfferInitialImpl<T> value,
          $Res Function(_$OfferInitialImpl<T>) then) =
      __$$OfferInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$OfferInitialImplCopyWithImpl<T, $Res>
    extends _$OfferStateCopyWithImpl<T, $Res, _$OfferInitialImpl<T>>
    implements _$$OfferInitialImplCopyWith<T, $Res> {
  __$$OfferInitialImplCopyWithImpl(
      _$OfferInitialImpl<T> _value, $Res Function(_$OfferInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of OfferState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OfferInitialImpl<T> implements OfferInitial<T> {
  const _$OfferInitialImpl();

  @override
  String toString() {
    return 'OfferState<$T>.offerInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OfferInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offerInitial,
    required TResult Function() offerLoading,
    required TResult Function(T offer) offerSuccess,
    required TResult Function(ApiErrorHandler error) offerError,
  }) {
    return offerInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? offerInitial,
    TResult? Function()? offerLoading,
    TResult? Function(T offer)? offerSuccess,
    TResult? Function(ApiErrorHandler error)? offerError,
  }) {
    return offerInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offerInitial,
    TResult Function()? offerLoading,
    TResult Function(T offer)? offerSuccess,
    TResult Function(ApiErrorHandler error)? offerError,
    required TResult orElse(),
  }) {
    if (offerInitial != null) {
      return offerInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfferInitial<T> value) offerInitial,
    required TResult Function(OfferLoading<T> value) offerLoading,
    required TResult Function(OfferSuccess<T> value) offerSuccess,
    required TResult Function(OfferError<T> value) offerError,
  }) {
    return offerInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfferInitial<T> value)? offerInitial,
    TResult? Function(OfferLoading<T> value)? offerLoading,
    TResult? Function(OfferSuccess<T> value)? offerSuccess,
    TResult? Function(OfferError<T> value)? offerError,
  }) {
    return offerInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfferInitial<T> value)? offerInitial,
    TResult Function(OfferLoading<T> value)? offerLoading,
    TResult Function(OfferSuccess<T> value)? offerSuccess,
    TResult Function(OfferError<T> value)? offerError,
    required TResult orElse(),
  }) {
    if (offerInitial != null) {
      return offerInitial(this);
    }
    return orElse();
  }
}

abstract class OfferInitial<T> implements OfferState<T> {
  const factory OfferInitial() = _$OfferInitialImpl<T>;
}

/// @nodoc
abstract class _$$OfferLoadingImplCopyWith<T, $Res> {
  factory _$$OfferLoadingImplCopyWith(_$OfferLoadingImpl<T> value,
          $Res Function(_$OfferLoadingImpl<T>) then) =
      __$$OfferLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$OfferLoadingImplCopyWithImpl<T, $Res>
    extends _$OfferStateCopyWithImpl<T, $Res, _$OfferLoadingImpl<T>>
    implements _$$OfferLoadingImplCopyWith<T, $Res> {
  __$$OfferLoadingImplCopyWithImpl(
      _$OfferLoadingImpl<T> _value, $Res Function(_$OfferLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of OfferState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OfferLoadingImpl<T> implements OfferLoading<T> {
  const _$OfferLoadingImpl();

  @override
  String toString() {
    return 'OfferState<$T>.offerLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OfferLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offerInitial,
    required TResult Function() offerLoading,
    required TResult Function(T offer) offerSuccess,
    required TResult Function(ApiErrorHandler error) offerError,
  }) {
    return offerLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? offerInitial,
    TResult? Function()? offerLoading,
    TResult? Function(T offer)? offerSuccess,
    TResult? Function(ApiErrorHandler error)? offerError,
  }) {
    return offerLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offerInitial,
    TResult Function()? offerLoading,
    TResult Function(T offer)? offerSuccess,
    TResult Function(ApiErrorHandler error)? offerError,
    required TResult orElse(),
  }) {
    if (offerLoading != null) {
      return offerLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfferInitial<T> value) offerInitial,
    required TResult Function(OfferLoading<T> value) offerLoading,
    required TResult Function(OfferSuccess<T> value) offerSuccess,
    required TResult Function(OfferError<T> value) offerError,
  }) {
    return offerLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfferInitial<T> value)? offerInitial,
    TResult? Function(OfferLoading<T> value)? offerLoading,
    TResult? Function(OfferSuccess<T> value)? offerSuccess,
    TResult? Function(OfferError<T> value)? offerError,
  }) {
    return offerLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfferInitial<T> value)? offerInitial,
    TResult Function(OfferLoading<T> value)? offerLoading,
    TResult Function(OfferSuccess<T> value)? offerSuccess,
    TResult Function(OfferError<T> value)? offerError,
    required TResult orElse(),
  }) {
    if (offerLoading != null) {
      return offerLoading(this);
    }
    return orElse();
  }
}

abstract class OfferLoading<T> implements OfferState<T> {
  const factory OfferLoading() = _$OfferLoadingImpl<T>;
}

/// @nodoc
abstract class _$$OfferSuccessImplCopyWith<T, $Res> {
  factory _$$OfferSuccessImplCopyWith(_$OfferSuccessImpl<T> value,
          $Res Function(_$OfferSuccessImpl<T>) then) =
      __$$OfferSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T offer});
}

/// @nodoc
class __$$OfferSuccessImplCopyWithImpl<T, $Res>
    extends _$OfferStateCopyWithImpl<T, $Res, _$OfferSuccessImpl<T>>
    implements _$$OfferSuccessImplCopyWith<T, $Res> {
  __$$OfferSuccessImplCopyWithImpl(
      _$OfferSuccessImpl<T> _value, $Res Function(_$OfferSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of OfferState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offer = freezed,
  }) {
    return _then(_$OfferSuccessImpl<T>(
      freezed == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$OfferSuccessImpl<T> implements OfferSuccess<T> {
  const _$OfferSuccessImpl(this.offer);

  @override
  final T offer;

  @override
  String toString() {
    return 'OfferState<$T>.offerSuccess(offer: $offer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.offer, offer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(offer));

  /// Create a copy of OfferState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferSuccessImplCopyWith<T, _$OfferSuccessImpl<T>> get copyWith =>
      __$$OfferSuccessImplCopyWithImpl<T, _$OfferSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offerInitial,
    required TResult Function() offerLoading,
    required TResult Function(T offer) offerSuccess,
    required TResult Function(ApiErrorHandler error) offerError,
  }) {
    return offerSuccess(offer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? offerInitial,
    TResult? Function()? offerLoading,
    TResult? Function(T offer)? offerSuccess,
    TResult? Function(ApiErrorHandler error)? offerError,
  }) {
    return offerSuccess?.call(offer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offerInitial,
    TResult Function()? offerLoading,
    TResult Function(T offer)? offerSuccess,
    TResult Function(ApiErrorHandler error)? offerError,
    required TResult orElse(),
  }) {
    if (offerSuccess != null) {
      return offerSuccess(offer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfferInitial<T> value) offerInitial,
    required TResult Function(OfferLoading<T> value) offerLoading,
    required TResult Function(OfferSuccess<T> value) offerSuccess,
    required TResult Function(OfferError<T> value) offerError,
  }) {
    return offerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfferInitial<T> value)? offerInitial,
    TResult? Function(OfferLoading<T> value)? offerLoading,
    TResult? Function(OfferSuccess<T> value)? offerSuccess,
    TResult? Function(OfferError<T> value)? offerError,
  }) {
    return offerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfferInitial<T> value)? offerInitial,
    TResult Function(OfferLoading<T> value)? offerLoading,
    TResult Function(OfferSuccess<T> value)? offerSuccess,
    TResult Function(OfferError<T> value)? offerError,
    required TResult orElse(),
  }) {
    if (offerSuccess != null) {
      return offerSuccess(this);
    }
    return orElse();
  }
}

abstract class OfferSuccess<T> implements OfferState<T> {
  const factory OfferSuccess(final T offer) = _$OfferSuccessImpl<T>;

  T get offer;

  /// Create a copy of OfferState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferSuccessImplCopyWith<T, _$OfferSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfferErrorImplCopyWith<T, $Res> {
  factory _$$OfferErrorImplCopyWith(
          _$OfferErrorImpl<T> value, $Res Function(_$OfferErrorImpl<T>) then) =
      __$$OfferErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorHandler error});
}

/// @nodoc
class __$$OfferErrorImplCopyWithImpl<T, $Res>
    extends _$OfferStateCopyWithImpl<T, $Res, _$OfferErrorImpl<T>>
    implements _$$OfferErrorImplCopyWith<T, $Res> {
  __$$OfferErrorImplCopyWithImpl(
      _$OfferErrorImpl<T> _value, $Res Function(_$OfferErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of OfferState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$OfferErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorHandler,
    ));
  }
}

/// @nodoc

class _$OfferErrorImpl<T> implements OfferError<T> {
  const _$OfferErrorImpl({required this.error});

  @override
  final ApiErrorHandler error;

  @override
  String toString() {
    return 'OfferState<$T>.offerError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of OfferState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferErrorImplCopyWith<T, _$OfferErrorImpl<T>> get copyWith =>
      __$$OfferErrorImplCopyWithImpl<T, _$OfferErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offerInitial,
    required TResult Function() offerLoading,
    required TResult Function(T offer) offerSuccess,
    required TResult Function(ApiErrorHandler error) offerError,
  }) {
    return offerError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? offerInitial,
    TResult? Function()? offerLoading,
    TResult? Function(T offer)? offerSuccess,
    TResult? Function(ApiErrorHandler error)? offerError,
  }) {
    return offerError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offerInitial,
    TResult Function()? offerLoading,
    TResult Function(T offer)? offerSuccess,
    TResult Function(ApiErrorHandler error)? offerError,
    required TResult orElse(),
  }) {
    if (offerError != null) {
      return offerError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfferInitial<T> value) offerInitial,
    required TResult Function(OfferLoading<T> value) offerLoading,
    required TResult Function(OfferSuccess<T> value) offerSuccess,
    required TResult Function(OfferError<T> value) offerError,
  }) {
    return offerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfferInitial<T> value)? offerInitial,
    TResult? Function(OfferLoading<T> value)? offerLoading,
    TResult? Function(OfferSuccess<T> value)? offerSuccess,
    TResult? Function(OfferError<T> value)? offerError,
  }) {
    return offerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfferInitial<T> value)? offerInitial,
    TResult Function(OfferLoading<T> value)? offerLoading,
    TResult Function(OfferSuccess<T> value)? offerSuccess,
    TResult Function(OfferError<T> value)? offerError,
    required TResult orElse(),
  }) {
    if (offerError != null) {
      return offerError(this);
    }
    return orElse();
  }
}

abstract class OfferError<T> implements OfferState<T> {
  const factory OfferError({required final ApiErrorHandler error}) =
      _$OfferErrorImpl<T>;

  ApiErrorHandler get error;

  /// Create a copy of OfferState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferErrorImplCopyWith<T, _$OfferErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
