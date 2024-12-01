// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_services_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllServicesState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allServiceInitial,
    required TResult Function() allServiceLoading,
    required TResult Function(T allServices) allServiceSuccess,
    required TResult Function(ApiErrorHandler error) allServiceError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allServiceInitial,
    TResult? Function()? allServiceLoading,
    TResult? Function(T allServices)? allServiceSuccess,
    TResult? Function(ApiErrorHandler error)? allServiceError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allServiceInitial,
    TResult Function()? allServiceLoading,
    TResult Function(T allServices)? allServiceSuccess,
    TResult Function(ApiErrorHandler error)? allServiceError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllServicesInitial<T> value) allServiceInitial,
    required TResult Function(AllServicesLoading<T> value) allServiceLoading,
    required TResult Function(AllServicesSuccess<T> value) allServiceSuccess,
    required TResult Function(AllServicesError<T> value) allServiceError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllServicesInitial<T> value)? allServiceInitial,
    TResult? Function(AllServicesLoading<T> value)? allServiceLoading,
    TResult? Function(AllServicesSuccess<T> value)? allServiceSuccess,
    TResult? Function(AllServicesError<T> value)? allServiceError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllServicesInitial<T> value)? allServiceInitial,
    TResult Function(AllServicesLoading<T> value)? allServiceLoading,
    TResult Function(AllServicesSuccess<T> value)? allServiceSuccess,
    TResult Function(AllServicesError<T> value)? allServiceError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllServicesStateCopyWith<T, $Res> {
  factory $AllServicesStateCopyWith(
          AllServicesState<T> value, $Res Function(AllServicesState<T>) then) =
      _$AllServicesStateCopyWithImpl<T, $Res, AllServicesState<T>>;
}

/// @nodoc
class _$AllServicesStateCopyWithImpl<T, $Res, $Val extends AllServicesState<T>>
    implements $AllServicesStateCopyWith<T, $Res> {
  _$AllServicesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllServicesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AllServicesInitialImplCopyWith<T, $Res> {
  factory _$$AllServicesInitialImplCopyWith(_$AllServicesInitialImpl<T> value,
          $Res Function(_$AllServicesInitialImpl<T>) then) =
      __$$AllServicesInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AllServicesInitialImplCopyWithImpl<T, $Res>
    extends _$AllServicesStateCopyWithImpl<T, $Res, _$AllServicesInitialImpl<T>>
    implements _$$AllServicesInitialImplCopyWith<T, $Res> {
  __$$AllServicesInitialImplCopyWithImpl(_$AllServicesInitialImpl<T> _value,
      $Res Function(_$AllServicesInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AllServicesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AllServicesInitialImpl<T> implements AllServicesInitial<T> {
  const _$AllServicesInitialImpl();

  @override
  String toString() {
    return 'AllServicesState<$T>.allServiceInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllServicesInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allServiceInitial,
    required TResult Function() allServiceLoading,
    required TResult Function(T allServices) allServiceSuccess,
    required TResult Function(ApiErrorHandler error) allServiceError,
  }) {
    return allServiceInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allServiceInitial,
    TResult? Function()? allServiceLoading,
    TResult? Function(T allServices)? allServiceSuccess,
    TResult? Function(ApiErrorHandler error)? allServiceError,
  }) {
    return allServiceInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allServiceInitial,
    TResult Function()? allServiceLoading,
    TResult Function(T allServices)? allServiceSuccess,
    TResult Function(ApiErrorHandler error)? allServiceError,
    required TResult orElse(),
  }) {
    if (allServiceInitial != null) {
      return allServiceInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllServicesInitial<T> value) allServiceInitial,
    required TResult Function(AllServicesLoading<T> value) allServiceLoading,
    required TResult Function(AllServicesSuccess<T> value) allServiceSuccess,
    required TResult Function(AllServicesError<T> value) allServiceError,
  }) {
    return allServiceInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllServicesInitial<T> value)? allServiceInitial,
    TResult? Function(AllServicesLoading<T> value)? allServiceLoading,
    TResult? Function(AllServicesSuccess<T> value)? allServiceSuccess,
    TResult? Function(AllServicesError<T> value)? allServiceError,
  }) {
    return allServiceInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllServicesInitial<T> value)? allServiceInitial,
    TResult Function(AllServicesLoading<T> value)? allServiceLoading,
    TResult Function(AllServicesSuccess<T> value)? allServiceSuccess,
    TResult Function(AllServicesError<T> value)? allServiceError,
    required TResult orElse(),
  }) {
    if (allServiceInitial != null) {
      return allServiceInitial(this);
    }
    return orElse();
  }
}

abstract class AllServicesInitial<T> implements AllServicesState<T> {
  const factory AllServicesInitial() = _$AllServicesInitialImpl<T>;
}

/// @nodoc
abstract class _$$AllServicesLoadingImplCopyWith<T, $Res> {
  factory _$$AllServicesLoadingImplCopyWith(_$AllServicesLoadingImpl<T> value,
          $Res Function(_$AllServicesLoadingImpl<T>) then) =
      __$$AllServicesLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AllServicesLoadingImplCopyWithImpl<T, $Res>
    extends _$AllServicesStateCopyWithImpl<T, $Res, _$AllServicesLoadingImpl<T>>
    implements _$$AllServicesLoadingImplCopyWith<T, $Res> {
  __$$AllServicesLoadingImplCopyWithImpl(_$AllServicesLoadingImpl<T> _value,
      $Res Function(_$AllServicesLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AllServicesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AllServicesLoadingImpl<T> implements AllServicesLoading<T> {
  const _$AllServicesLoadingImpl();

  @override
  String toString() {
    return 'AllServicesState<$T>.allServiceLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllServicesLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allServiceInitial,
    required TResult Function() allServiceLoading,
    required TResult Function(T allServices) allServiceSuccess,
    required TResult Function(ApiErrorHandler error) allServiceError,
  }) {
    return allServiceLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allServiceInitial,
    TResult? Function()? allServiceLoading,
    TResult? Function(T allServices)? allServiceSuccess,
    TResult? Function(ApiErrorHandler error)? allServiceError,
  }) {
    return allServiceLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allServiceInitial,
    TResult Function()? allServiceLoading,
    TResult Function(T allServices)? allServiceSuccess,
    TResult Function(ApiErrorHandler error)? allServiceError,
    required TResult orElse(),
  }) {
    if (allServiceLoading != null) {
      return allServiceLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllServicesInitial<T> value) allServiceInitial,
    required TResult Function(AllServicesLoading<T> value) allServiceLoading,
    required TResult Function(AllServicesSuccess<T> value) allServiceSuccess,
    required TResult Function(AllServicesError<T> value) allServiceError,
  }) {
    return allServiceLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllServicesInitial<T> value)? allServiceInitial,
    TResult? Function(AllServicesLoading<T> value)? allServiceLoading,
    TResult? Function(AllServicesSuccess<T> value)? allServiceSuccess,
    TResult? Function(AllServicesError<T> value)? allServiceError,
  }) {
    return allServiceLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllServicesInitial<T> value)? allServiceInitial,
    TResult Function(AllServicesLoading<T> value)? allServiceLoading,
    TResult Function(AllServicesSuccess<T> value)? allServiceSuccess,
    TResult Function(AllServicesError<T> value)? allServiceError,
    required TResult orElse(),
  }) {
    if (allServiceLoading != null) {
      return allServiceLoading(this);
    }
    return orElse();
  }
}

abstract class AllServicesLoading<T> implements AllServicesState<T> {
  const factory AllServicesLoading() = _$AllServicesLoadingImpl<T>;
}

/// @nodoc
abstract class _$$AllServicesSuccessImplCopyWith<T, $Res> {
  factory _$$AllServicesSuccessImplCopyWith(_$AllServicesSuccessImpl<T> value,
          $Res Function(_$AllServicesSuccessImpl<T>) then) =
      __$$AllServicesSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T allServices});
}

/// @nodoc
class __$$AllServicesSuccessImplCopyWithImpl<T, $Res>
    extends _$AllServicesStateCopyWithImpl<T, $Res, _$AllServicesSuccessImpl<T>>
    implements _$$AllServicesSuccessImplCopyWith<T, $Res> {
  __$$AllServicesSuccessImplCopyWithImpl(_$AllServicesSuccessImpl<T> _value,
      $Res Function(_$AllServicesSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AllServicesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allServices = freezed,
  }) {
    return _then(_$AllServicesSuccessImpl<T>(
      freezed == allServices
          ? _value.allServices
          : allServices // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AllServicesSuccessImpl<T> implements AllServicesSuccess<T> {
  const _$AllServicesSuccessImpl(this.allServices);

  @override
  final T allServices;

  @override
  String toString() {
    return 'AllServicesState<$T>.allServiceSuccess(allServices: $allServices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllServicesSuccessImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.allServices, allServices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(allServices));

  /// Create a copy of AllServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllServicesSuccessImplCopyWith<T, _$AllServicesSuccessImpl<T>>
      get copyWith => __$$AllServicesSuccessImplCopyWithImpl<T,
          _$AllServicesSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allServiceInitial,
    required TResult Function() allServiceLoading,
    required TResult Function(T allServices) allServiceSuccess,
    required TResult Function(ApiErrorHandler error) allServiceError,
  }) {
    return allServiceSuccess(allServices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allServiceInitial,
    TResult? Function()? allServiceLoading,
    TResult? Function(T allServices)? allServiceSuccess,
    TResult? Function(ApiErrorHandler error)? allServiceError,
  }) {
    return allServiceSuccess?.call(allServices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allServiceInitial,
    TResult Function()? allServiceLoading,
    TResult Function(T allServices)? allServiceSuccess,
    TResult Function(ApiErrorHandler error)? allServiceError,
    required TResult orElse(),
  }) {
    if (allServiceSuccess != null) {
      return allServiceSuccess(allServices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllServicesInitial<T> value) allServiceInitial,
    required TResult Function(AllServicesLoading<T> value) allServiceLoading,
    required TResult Function(AllServicesSuccess<T> value) allServiceSuccess,
    required TResult Function(AllServicesError<T> value) allServiceError,
  }) {
    return allServiceSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllServicesInitial<T> value)? allServiceInitial,
    TResult? Function(AllServicesLoading<T> value)? allServiceLoading,
    TResult? Function(AllServicesSuccess<T> value)? allServiceSuccess,
    TResult? Function(AllServicesError<T> value)? allServiceError,
  }) {
    return allServiceSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllServicesInitial<T> value)? allServiceInitial,
    TResult Function(AllServicesLoading<T> value)? allServiceLoading,
    TResult Function(AllServicesSuccess<T> value)? allServiceSuccess,
    TResult Function(AllServicesError<T> value)? allServiceError,
    required TResult orElse(),
  }) {
    if (allServiceSuccess != null) {
      return allServiceSuccess(this);
    }
    return orElse();
  }
}

abstract class AllServicesSuccess<T> implements AllServicesState<T> {
  const factory AllServicesSuccess(final T allServices) =
      _$AllServicesSuccessImpl<T>;

  T get allServices;

  /// Create a copy of AllServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllServicesSuccessImplCopyWith<T, _$AllServicesSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AllServicesErrorImplCopyWith<T, $Res> {
  factory _$$AllServicesErrorImplCopyWith(_$AllServicesErrorImpl<T> value,
          $Res Function(_$AllServicesErrorImpl<T>) then) =
      __$$AllServicesErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorHandler error});
}

/// @nodoc
class __$$AllServicesErrorImplCopyWithImpl<T, $Res>
    extends _$AllServicesStateCopyWithImpl<T, $Res, _$AllServicesErrorImpl<T>>
    implements _$$AllServicesErrorImplCopyWith<T, $Res> {
  __$$AllServicesErrorImplCopyWithImpl(_$AllServicesErrorImpl<T> _value,
      $Res Function(_$AllServicesErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AllServicesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AllServicesErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorHandler,
    ));
  }
}

/// @nodoc

class _$AllServicesErrorImpl<T> implements AllServicesError<T> {
  const _$AllServicesErrorImpl({required this.error});

  @override
  final ApiErrorHandler error;

  @override
  String toString() {
    return 'AllServicesState<$T>.allServiceError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllServicesErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AllServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllServicesErrorImplCopyWith<T, _$AllServicesErrorImpl<T>> get copyWith =>
      __$$AllServicesErrorImplCopyWithImpl<T, _$AllServicesErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allServiceInitial,
    required TResult Function() allServiceLoading,
    required TResult Function(T allServices) allServiceSuccess,
    required TResult Function(ApiErrorHandler error) allServiceError,
  }) {
    return allServiceError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allServiceInitial,
    TResult? Function()? allServiceLoading,
    TResult? Function(T allServices)? allServiceSuccess,
    TResult? Function(ApiErrorHandler error)? allServiceError,
  }) {
    return allServiceError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allServiceInitial,
    TResult Function()? allServiceLoading,
    TResult Function(T allServices)? allServiceSuccess,
    TResult Function(ApiErrorHandler error)? allServiceError,
    required TResult orElse(),
  }) {
    if (allServiceError != null) {
      return allServiceError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllServicesInitial<T> value) allServiceInitial,
    required TResult Function(AllServicesLoading<T> value) allServiceLoading,
    required TResult Function(AllServicesSuccess<T> value) allServiceSuccess,
    required TResult Function(AllServicesError<T> value) allServiceError,
  }) {
    return allServiceError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllServicesInitial<T> value)? allServiceInitial,
    TResult? Function(AllServicesLoading<T> value)? allServiceLoading,
    TResult? Function(AllServicesSuccess<T> value)? allServiceSuccess,
    TResult? Function(AllServicesError<T> value)? allServiceError,
  }) {
    return allServiceError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllServicesInitial<T> value)? allServiceInitial,
    TResult Function(AllServicesLoading<T> value)? allServiceLoading,
    TResult Function(AllServicesSuccess<T> value)? allServiceSuccess,
    TResult Function(AllServicesError<T> value)? allServiceError,
    required TResult orElse(),
  }) {
    if (allServiceError != null) {
      return allServiceError(this);
    }
    return orElse();
  }
}

abstract class AllServicesError<T> implements AllServicesState<T> {
  const factory AllServicesError({required final ApiErrorHandler error}) =
      _$AllServicesErrorImpl<T>;

  ApiErrorHandler get error;

  /// Create a copy of AllServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllServicesErrorImplCopyWith<T, _$AllServicesErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
