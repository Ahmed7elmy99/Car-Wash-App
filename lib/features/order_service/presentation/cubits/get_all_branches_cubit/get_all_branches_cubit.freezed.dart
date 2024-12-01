// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_branches_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetAllBranchesState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T branches) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T branches)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T branches)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetAllBranchesLoading<T> value) loading,
    required TResult Function(GetAllBranchesSuccess<T> value) success,
    required TResult Function(GetAllBranchesFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetAllBranchesLoading<T> value)? loading,
    TResult? Function(GetAllBranchesSuccess<T> value)? success,
    TResult? Function(GetAllBranchesFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetAllBranchesLoading<T> value)? loading,
    TResult Function(GetAllBranchesSuccess<T> value)? success,
    TResult Function(GetAllBranchesFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllBranchesStateCopyWith<T, $Res> {
  factory $GetAllBranchesStateCopyWith(GetAllBranchesState<T> value,
          $Res Function(GetAllBranchesState<T>) then) =
      _$GetAllBranchesStateCopyWithImpl<T, $Res, GetAllBranchesState<T>>;
}

/// @nodoc
class _$GetAllBranchesStateCopyWithImpl<T, $Res,
        $Val extends GetAllBranchesState<T>>
    implements $GetAllBranchesStateCopyWith<T, $Res> {
  _$GetAllBranchesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllBranchesState
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
    extends _$GetAllBranchesStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GetAllBranchesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GetAllBranchesState<$T>.initial()';
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
    required TResult Function(T branches) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T branches)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T branches)? success,
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
    required TResult Function(GetAllBranchesLoading<T> value) loading,
    required TResult Function(GetAllBranchesSuccess<T> value) success,
    required TResult Function(GetAllBranchesFailure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetAllBranchesLoading<T> value)? loading,
    TResult? Function(GetAllBranchesSuccess<T> value)? success,
    TResult? Function(GetAllBranchesFailure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetAllBranchesLoading<T> value)? loading,
    TResult Function(GetAllBranchesSuccess<T> value)? success,
    TResult Function(GetAllBranchesFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements GetAllBranchesState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$GetAllBranchesLoadingImplCopyWith<T, $Res> {
  factory _$$GetAllBranchesLoadingImplCopyWith(
          _$GetAllBranchesLoadingImpl<T> value,
          $Res Function(_$GetAllBranchesLoadingImpl<T>) then) =
      __$$GetAllBranchesLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetAllBranchesLoadingImplCopyWithImpl<T, $Res>
    extends _$GetAllBranchesStateCopyWithImpl<T, $Res,
        _$GetAllBranchesLoadingImpl<T>>
    implements _$$GetAllBranchesLoadingImplCopyWith<T, $Res> {
  __$$GetAllBranchesLoadingImplCopyWithImpl(
      _$GetAllBranchesLoadingImpl<T> _value,
      $Res Function(_$GetAllBranchesLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GetAllBranchesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllBranchesLoadingImpl<T> implements GetAllBranchesLoading<T> {
  const _$GetAllBranchesLoadingImpl();

  @override
  String toString() {
    return 'GetAllBranchesState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllBranchesLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T branches) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T branches)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T branches)? success,
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
    required TResult Function(GetAllBranchesLoading<T> value) loading,
    required TResult Function(GetAllBranchesSuccess<T> value) success,
    required TResult Function(GetAllBranchesFailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetAllBranchesLoading<T> value)? loading,
    TResult? Function(GetAllBranchesSuccess<T> value)? success,
    TResult? Function(GetAllBranchesFailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetAllBranchesLoading<T> value)? loading,
    TResult Function(GetAllBranchesSuccess<T> value)? success,
    TResult Function(GetAllBranchesFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetAllBranchesLoading<T> implements GetAllBranchesState<T> {
  const factory GetAllBranchesLoading() = _$GetAllBranchesLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GetAllBranchesSuccessImplCopyWith<T, $Res> {
  factory _$$GetAllBranchesSuccessImplCopyWith(
          _$GetAllBranchesSuccessImpl<T> value,
          $Res Function(_$GetAllBranchesSuccessImpl<T>) then) =
      __$$GetAllBranchesSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T branches});
}

/// @nodoc
class __$$GetAllBranchesSuccessImplCopyWithImpl<T, $Res>
    extends _$GetAllBranchesStateCopyWithImpl<T, $Res,
        _$GetAllBranchesSuccessImpl<T>>
    implements _$$GetAllBranchesSuccessImplCopyWith<T, $Res> {
  __$$GetAllBranchesSuccessImplCopyWithImpl(
      _$GetAllBranchesSuccessImpl<T> _value,
      $Res Function(_$GetAllBranchesSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GetAllBranchesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branches = freezed,
  }) {
    return _then(_$GetAllBranchesSuccessImpl<T>(
      freezed == branches
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$GetAllBranchesSuccessImpl<T> implements GetAllBranchesSuccess<T> {
  const _$GetAllBranchesSuccessImpl(this.branches);

  @override
  final T branches;

  @override
  String toString() {
    return 'GetAllBranchesState<$T>.success(branches: $branches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllBranchesSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.branches, branches));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(branches));

  /// Create a copy of GetAllBranchesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllBranchesSuccessImplCopyWith<T, _$GetAllBranchesSuccessImpl<T>>
      get copyWith => __$$GetAllBranchesSuccessImplCopyWithImpl<T,
          _$GetAllBranchesSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T branches) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return success(branches);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T branches)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return success?.call(branches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T branches)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(branches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetAllBranchesLoading<T> value) loading,
    required TResult Function(GetAllBranchesSuccess<T> value) success,
    required TResult Function(GetAllBranchesFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetAllBranchesLoading<T> value)? loading,
    TResult? Function(GetAllBranchesSuccess<T> value)? success,
    TResult? Function(GetAllBranchesFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetAllBranchesLoading<T> value)? loading,
    TResult Function(GetAllBranchesSuccess<T> value)? success,
    TResult Function(GetAllBranchesFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GetAllBranchesSuccess<T> implements GetAllBranchesState<T> {
  const factory GetAllBranchesSuccess(final T branches) =
      _$GetAllBranchesSuccessImpl<T>;

  T get branches;

  /// Create a copy of GetAllBranchesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllBranchesSuccessImplCopyWith<T, _$GetAllBranchesSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllBranchesFailureImplCopyWith<T, $Res> {
  factory _$$GetAllBranchesFailureImplCopyWith(
          _$GetAllBranchesFailureImpl<T> value,
          $Res Function(_$GetAllBranchesFailureImpl<T>) then) =
      __$$GetAllBranchesFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorHandler error});
}

/// @nodoc
class __$$GetAllBranchesFailureImplCopyWithImpl<T, $Res>
    extends _$GetAllBranchesStateCopyWithImpl<T, $Res,
        _$GetAllBranchesFailureImpl<T>>
    implements _$$GetAllBranchesFailureImplCopyWith<T, $Res> {
  __$$GetAllBranchesFailureImplCopyWithImpl(
      _$GetAllBranchesFailureImpl<T> _value,
      $Res Function(_$GetAllBranchesFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GetAllBranchesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetAllBranchesFailureImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorHandler,
    ));
  }
}

/// @nodoc

class _$GetAllBranchesFailureImpl<T> implements GetAllBranchesFailure<T> {
  const _$GetAllBranchesFailureImpl({required this.error});

  @override
  final ApiErrorHandler error;

  @override
  String toString() {
    return 'GetAllBranchesState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllBranchesFailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of GetAllBranchesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllBranchesFailureImplCopyWith<T, _$GetAllBranchesFailureImpl<T>>
      get copyWith => __$$GetAllBranchesFailureImplCopyWithImpl<T,
          _$GetAllBranchesFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T branches) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T branches)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T branches)? success,
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
    required TResult Function(GetAllBranchesLoading<T> value) loading,
    required TResult Function(GetAllBranchesSuccess<T> value) success,
    required TResult Function(GetAllBranchesFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetAllBranchesLoading<T> value)? loading,
    TResult? Function(GetAllBranchesSuccess<T> value)? success,
    TResult? Function(GetAllBranchesFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetAllBranchesLoading<T> value)? loading,
    TResult Function(GetAllBranchesSuccess<T> value)? success,
    TResult Function(GetAllBranchesFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class GetAllBranchesFailure<T> implements GetAllBranchesState<T> {
  const factory GetAllBranchesFailure({required final ApiErrorHandler error}) =
      _$GetAllBranchesFailureImpl<T>;

  ApiErrorHandler get error;

  /// Create a copy of GetAllBranchesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllBranchesFailureImplCopyWith<T, _$GetAllBranchesFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
