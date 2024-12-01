// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T searchList) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T searchList)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T searchList)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SearchLoading<T> value) loading,
    required TResult Function(SearchSuccess<T> value) success,
    required TResult Function(Searchfailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SearchLoading<T> value)? loading,
    TResult? Function(SearchSuccess<T> value)? success,
    TResult? Function(Searchfailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SearchLoading<T> value)? loading,
    TResult Function(SearchSuccess<T> value)? success,
    TResult Function(Searchfailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<T, $Res> {
  factory $SearchStateCopyWith(
          SearchState<T> value, $Res Function(SearchState<T>) then) =
      _$SearchStateCopyWithImpl<T, $Res, SearchState<T>>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<T, $Res, $Val extends SearchState<T>>
    implements $SearchStateCopyWith<T, $Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
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
    extends _$SearchStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SearchState<$T>.initial()';
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
    required TResult Function(T searchList) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T searchList)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T searchList)? success,
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
    required TResult Function(SearchLoading<T> value) loading,
    required TResult Function(SearchSuccess<T> value) success,
    required TResult Function(Searchfailure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SearchLoading<T> value)? loading,
    TResult? Function(SearchSuccess<T> value)? success,
    TResult? Function(Searchfailure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SearchLoading<T> value)? loading,
    TResult Function(SearchSuccess<T> value)? success,
    TResult Function(Searchfailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SearchState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$SearchLoadingImplCopyWith<T, $Res> {
  factory _$$SearchLoadingImplCopyWith(_$SearchLoadingImpl<T> value,
          $Res Function(_$SearchLoadingImpl<T>) then) =
      __$$SearchLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SearchLoadingImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$SearchLoadingImpl<T>>
    implements _$$SearchLoadingImplCopyWith<T, $Res> {
  __$$SearchLoadingImplCopyWithImpl(_$SearchLoadingImpl<T> _value,
      $Res Function(_$SearchLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchLoadingImpl<T> implements SearchLoading<T> {
  const _$SearchLoadingImpl();

  @override
  String toString() {
    return 'SearchState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T searchList) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T searchList)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T searchList)? success,
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
    required TResult Function(SearchLoading<T> value) loading,
    required TResult Function(SearchSuccess<T> value) success,
    required TResult Function(Searchfailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SearchLoading<T> value)? loading,
    TResult? Function(SearchSuccess<T> value)? success,
    TResult? Function(Searchfailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SearchLoading<T> value)? loading,
    TResult Function(SearchSuccess<T> value)? success,
    TResult Function(Searchfailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchLoading<T> implements SearchState<T> {
  const factory SearchLoading() = _$SearchLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SearchSuccessImplCopyWith<T, $Res> {
  factory _$$SearchSuccessImplCopyWith(_$SearchSuccessImpl<T> value,
          $Res Function(_$SearchSuccessImpl<T>) then) =
      __$$SearchSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T searchList});
}

/// @nodoc
class __$$SearchSuccessImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$SearchSuccessImpl<T>>
    implements _$$SearchSuccessImplCopyWith<T, $Res> {
  __$$SearchSuccessImplCopyWithImpl(_$SearchSuccessImpl<T> _value,
      $Res Function(_$SearchSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchList = freezed,
  }) {
    return _then(_$SearchSuccessImpl<T>(
      freezed == searchList
          ? _value.searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SearchSuccessImpl<T> implements SearchSuccess<T> {
  const _$SearchSuccessImpl(this.searchList);

  @override
  final T searchList;

  @override
  String toString() {
    return 'SearchState<$T>.success(searchList: $searchList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuccessImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.searchList, searchList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(searchList));

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuccessImplCopyWith<T, _$SearchSuccessImpl<T>> get copyWith =>
      __$$SearchSuccessImplCopyWithImpl<T, _$SearchSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T searchList) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return success(searchList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T searchList)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return success?.call(searchList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T searchList)? success,
    TResult Function(ApiErrorHandler error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(searchList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SearchLoading<T> value) loading,
    required TResult Function(SearchSuccess<T> value) success,
    required TResult Function(Searchfailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SearchLoading<T> value)? loading,
    TResult? Function(SearchSuccess<T> value)? success,
    TResult? Function(Searchfailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SearchLoading<T> value)? loading,
    TResult Function(SearchSuccess<T> value)? success,
    TResult Function(Searchfailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SearchSuccess<T> implements SearchState<T> {
  const factory SearchSuccess(final T searchList) = _$SearchSuccessImpl<T>;

  T get searchList;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchSuccessImplCopyWith<T, _$SearchSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchfailureImplCopyWith<T, $Res> {
  factory _$$SearchfailureImplCopyWith(_$SearchfailureImpl<T> value,
          $Res Function(_$SearchfailureImpl<T>) then) =
      __$$SearchfailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorHandler error});
}

/// @nodoc
class __$$SearchfailureImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$SearchfailureImpl<T>>
    implements _$$SearchfailureImplCopyWith<T, $Res> {
  __$$SearchfailureImplCopyWithImpl(_$SearchfailureImpl<T> _value,
      $Res Function(_$SearchfailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SearchfailureImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorHandler,
    ));
  }
}

/// @nodoc

class _$SearchfailureImpl<T> implements Searchfailure<T> {
  const _$SearchfailureImpl({required this.error});

  @override
  final ApiErrorHandler error;

  @override
  String toString() {
    return 'SearchState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchfailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchfailureImplCopyWith<T, _$SearchfailureImpl<T>> get copyWith =>
      __$$SearchfailureImplCopyWithImpl<T, _$SearchfailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T searchList) success,
    required TResult Function(ApiErrorHandler error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T searchList)? success,
    TResult? Function(ApiErrorHandler error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T searchList)? success,
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
    required TResult Function(SearchLoading<T> value) loading,
    required TResult Function(SearchSuccess<T> value) success,
    required TResult Function(Searchfailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SearchLoading<T> value)? loading,
    TResult? Function(SearchSuccess<T> value)? success,
    TResult? Function(Searchfailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SearchLoading<T> value)? loading,
    TResult Function(SearchSuccess<T> value)? success,
    TResult Function(Searchfailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Searchfailure<T> implements SearchState<T> {
  const factory Searchfailure({required final ApiErrorHandler error}) =
      _$SearchfailureImpl<T>;

  ApiErrorHandler get error;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchfailureImplCopyWith<T, _$SearchfailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
