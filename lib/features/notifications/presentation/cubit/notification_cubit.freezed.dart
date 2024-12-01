// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function() loadone,
    required TResult Function(List<NotificationModel> modelList) success,
    required TResult Function(ApiErrorHandler error) failure,
    required TResult Function(NotificationModel? message) pressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function()? loadone,
    TResult? Function(List<NotificationModel> modelList)? success,
    TResult? Function(ApiErrorHandler error)? failure,
    TResult? Function(NotificationModel? message)? pressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function()? loadone,
    TResult Function(List<NotificationModel> modelList)? success,
    TResult Function(ApiErrorHandler error)? failure,
    TResult Function(NotificationModel? message)? pressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingNotification value) load,
    required TResult Function(LoadingNotificationOne value) loadone,
    required TResult Function(Successnotifications value) success,
    required TResult Function(Errornotification value) failure,
    required TResult Function(pressedNotification value) pressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNotification value)? load,
    TResult? Function(LoadingNotificationOne value)? loadone,
    TResult? Function(Successnotifications value)? success,
    TResult? Function(Errornotification value)? failure,
    TResult? Function(pressedNotification value)? pressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNotification value)? load,
    TResult Function(LoadingNotificationOne value)? loadone,
    TResult Function(Successnotifications value)? success,
    TResult Function(Errornotification value)? failure,
    TResult Function(pressedNotification value)? pressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'NotificationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function() loadone,
    required TResult Function(List<NotificationModel> modelList) success,
    required TResult Function(ApiErrorHandler error) failure,
    required TResult Function(NotificationModel? message) pressed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function()? loadone,
    TResult? Function(List<NotificationModel> modelList)? success,
    TResult? Function(ApiErrorHandler error)? failure,
    TResult? Function(NotificationModel? message)? pressed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function()? loadone,
    TResult Function(List<NotificationModel> modelList)? success,
    TResult Function(ApiErrorHandler error)? failure,
    TResult Function(NotificationModel? message)? pressed,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingNotification value) load,
    required TResult Function(LoadingNotificationOne value) loadone,
    required TResult Function(Successnotifications value) success,
    required TResult Function(Errornotification value) failure,
    required TResult Function(pressedNotification value) pressed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNotification value)? load,
    TResult? Function(LoadingNotificationOne value)? loadone,
    TResult? Function(Successnotifications value)? success,
    TResult? Function(Errornotification value)? failure,
    TResult? Function(pressedNotification value)? pressed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNotification value)? load,
    TResult Function(LoadingNotificationOne value)? loadone,
    TResult Function(Successnotifications value)? success,
    TResult Function(Errornotification value)? failure,
    TResult Function(pressedNotification value)? pressed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingNotificationImplCopyWith<$Res> {
  factory _$$LoadingNotificationImplCopyWith(_$LoadingNotificationImpl value,
          $Res Function(_$LoadingNotificationImpl) then) =
      __$$LoadingNotificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingNotificationImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$LoadingNotificationImpl>
    implements _$$LoadingNotificationImplCopyWith<$Res> {
  __$$LoadingNotificationImplCopyWithImpl(_$LoadingNotificationImpl _value,
      $Res Function(_$LoadingNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingNotificationImpl implements LoadingNotification {
  const _$LoadingNotificationImpl();

  @override
  String toString() {
    return 'NotificationState.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingNotificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function() loadone,
    required TResult Function(List<NotificationModel> modelList) success,
    required TResult Function(ApiErrorHandler error) failure,
    required TResult Function(NotificationModel? message) pressed,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function()? loadone,
    TResult? Function(List<NotificationModel> modelList)? success,
    TResult? Function(ApiErrorHandler error)? failure,
    TResult? Function(NotificationModel? message)? pressed,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function()? loadone,
    TResult Function(List<NotificationModel> modelList)? success,
    TResult Function(ApiErrorHandler error)? failure,
    TResult Function(NotificationModel? message)? pressed,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingNotification value) load,
    required TResult Function(LoadingNotificationOne value) loadone,
    required TResult Function(Successnotifications value) success,
    required TResult Function(Errornotification value) failure,
    required TResult Function(pressedNotification value) pressed,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNotification value)? load,
    TResult? Function(LoadingNotificationOne value)? loadone,
    TResult? Function(Successnotifications value)? success,
    TResult? Function(Errornotification value)? failure,
    TResult? Function(pressedNotification value)? pressed,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNotification value)? load,
    TResult Function(LoadingNotificationOne value)? loadone,
    TResult Function(Successnotifications value)? success,
    TResult Function(Errornotification value)? failure,
    TResult Function(pressedNotification value)? pressed,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingNotification implements NotificationState {
  const factory LoadingNotification() = _$LoadingNotificationImpl;
}

/// @nodoc
abstract class _$$LoadingNotificationOneImplCopyWith<$Res> {
  factory _$$LoadingNotificationOneImplCopyWith(
          _$LoadingNotificationOneImpl value,
          $Res Function(_$LoadingNotificationOneImpl) then) =
      __$$LoadingNotificationOneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingNotificationOneImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$LoadingNotificationOneImpl>
    implements _$$LoadingNotificationOneImplCopyWith<$Res> {
  __$$LoadingNotificationOneImplCopyWithImpl(
      _$LoadingNotificationOneImpl _value,
      $Res Function(_$LoadingNotificationOneImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingNotificationOneImpl implements LoadingNotificationOne {
  const _$LoadingNotificationOneImpl();

  @override
  String toString() {
    return 'NotificationState.loadone()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingNotificationOneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function() loadone,
    required TResult Function(List<NotificationModel> modelList) success,
    required TResult Function(ApiErrorHandler error) failure,
    required TResult Function(NotificationModel? message) pressed,
  }) {
    return loadone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function()? loadone,
    TResult? Function(List<NotificationModel> modelList)? success,
    TResult? Function(ApiErrorHandler error)? failure,
    TResult? Function(NotificationModel? message)? pressed,
  }) {
    return loadone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function()? loadone,
    TResult Function(List<NotificationModel> modelList)? success,
    TResult Function(ApiErrorHandler error)? failure,
    TResult Function(NotificationModel? message)? pressed,
    required TResult orElse(),
  }) {
    if (loadone != null) {
      return loadone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingNotification value) load,
    required TResult Function(LoadingNotificationOne value) loadone,
    required TResult Function(Successnotifications value) success,
    required TResult Function(Errornotification value) failure,
    required TResult Function(pressedNotification value) pressed,
  }) {
    return loadone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNotification value)? load,
    TResult? Function(LoadingNotificationOne value)? loadone,
    TResult? Function(Successnotifications value)? success,
    TResult? Function(Errornotification value)? failure,
    TResult? Function(pressedNotification value)? pressed,
  }) {
    return loadone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNotification value)? load,
    TResult Function(LoadingNotificationOne value)? loadone,
    TResult Function(Successnotifications value)? success,
    TResult Function(Errornotification value)? failure,
    TResult Function(pressedNotification value)? pressed,
    required TResult orElse(),
  }) {
    if (loadone != null) {
      return loadone(this);
    }
    return orElse();
  }
}

abstract class LoadingNotificationOne implements NotificationState {
  const factory LoadingNotificationOne() = _$LoadingNotificationOneImpl;
}

/// @nodoc
abstract class _$$SuccessnotificationsImplCopyWith<$Res> {
  factory _$$SuccessnotificationsImplCopyWith(_$SuccessnotificationsImpl value,
          $Res Function(_$SuccessnotificationsImpl) then) =
      __$$SuccessnotificationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NotificationModel> modelList});
}

/// @nodoc
class __$$SuccessnotificationsImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$SuccessnotificationsImpl>
    implements _$$SuccessnotificationsImplCopyWith<$Res> {
  __$$SuccessnotificationsImplCopyWithImpl(_$SuccessnotificationsImpl _value,
      $Res Function(_$SuccessnotificationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelList = null,
  }) {
    return _then(_$SuccessnotificationsImpl(
      null == modelList
          ? _value._modelList
          : modelList // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
    ));
  }
}

/// @nodoc

class _$SuccessnotificationsImpl implements Successnotifications {
  const _$SuccessnotificationsImpl(final List<NotificationModel> modelList)
      : _modelList = modelList;

  final List<NotificationModel> _modelList;
  @override
  List<NotificationModel> get modelList {
    if (_modelList is EqualUnmodifiableListView) return _modelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modelList);
  }

  @override
  String toString() {
    return 'NotificationState.success(modelList: $modelList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessnotificationsImpl &&
            const DeepCollectionEquality()
                .equals(other._modelList, _modelList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_modelList));

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessnotificationsImplCopyWith<_$SuccessnotificationsImpl>
      get copyWith =>
          __$$SuccessnotificationsImplCopyWithImpl<_$SuccessnotificationsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function() loadone,
    required TResult Function(List<NotificationModel> modelList) success,
    required TResult Function(ApiErrorHandler error) failure,
    required TResult Function(NotificationModel? message) pressed,
  }) {
    return success(modelList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function()? loadone,
    TResult? Function(List<NotificationModel> modelList)? success,
    TResult? Function(ApiErrorHandler error)? failure,
    TResult? Function(NotificationModel? message)? pressed,
  }) {
    return success?.call(modelList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function()? loadone,
    TResult Function(List<NotificationModel> modelList)? success,
    TResult Function(ApiErrorHandler error)? failure,
    TResult Function(NotificationModel? message)? pressed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(modelList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingNotification value) load,
    required TResult Function(LoadingNotificationOne value) loadone,
    required TResult Function(Successnotifications value) success,
    required TResult Function(Errornotification value) failure,
    required TResult Function(pressedNotification value) pressed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNotification value)? load,
    TResult? Function(LoadingNotificationOne value)? loadone,
    TResult? Function(Successnotifications value)? success,
    TResult? Function(Errornotification value)? failure,
    TResult? Function(pressedNotification value)? pressed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNotification value)? load,
    TResult Function(LoadingNotificationOne value)? loadone,
    TResult Function(Successnotifications value)? success,
    TResult Function(Errornotification value)? failure,
    TResult Function(pressedNotification value)? pressed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Successnotifications implements NotificationState {
  const factory Successnotifications(final List<NotificationModel> modelList) =
      _$SuccessnotificationsImpl;

  List<NotificationModel> get modelList;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessnotificationsImplCopyWith<_$SuccessnotificationsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrornotificationImplCopyWith<$Res> {
  factory _$$ErrornotificationImplCopyWith(_$ErrornotificationImpl value,
          $Res Function(_$ErrornotificationImpl) then) =
      __$$ErrornotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorHandler error});
}

/// @nodoc
class __$$ErrornotificationImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$ErrornotificationImpl>
    implements _$$ErrornotificationImplCopyWith<$Res> {
  __$$ErrornotificationImplCopyWithImpl(_$ErrornotificationImpl _value,
      $Res Function(_$ErrornotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrornotificationImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorHandler,
    ));
  }
}

/// @nodoc

class _$ErrornotificationImpl implements Errornotification {
  const _$ErrornotificationImpl(this.error);

  @override
  final ApiErrorHandler error;

  @override
  String toString() {
    return 'NotificationState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrornotificationImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrornotificationImplCopyWith<_$ErrornotificationImpl> get copyWith =>
      __$$ErrornotificationImplCopyWithImpl<_$ErrornotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function() loadone,
    required TResult Function(List<NotificationModel> modelList) success,
    required TResult Function(ApiErrorHandler error) failure,
    required TResult Function(NotificationModel? message) pressed,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function()? loadone,
    TResult? Function(List<NotificationModel> modelList)? success,
    TResult? Function(ApiErrorHandler error)? failure,
    TResult? Function(NotificationModel? message)? pressed,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function()? loadone,
    TResult Function(List<NotificationModel> modelList)? success,
    TResult Function(ApiErrorHandler error)? failure,
    TResult Function(NotificationModel? message)? pressed,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingNotification value) load,
    required TResult Function(LoadingNotificationOne value) loadone,
    required TResult Function(Successnotifications value) success,
    required TResult Function(Errornotification value) failure,
    required TResult Function(pressedNotification value) pressed,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNotification value)? load,
    TResult? Function(LoadingNotificationOne value)? loadone,
    TResult? Function(Successnotifications value)? success,
    TResult? Function(Errornotification value)? failure,
    TResult? Function(pressedNotification value)? pressed,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNotification value)? load,
    TResult Function(LoadingNotificationOne value)? loadone,
    TResult Function(Successnotifications value)? success,
    TResult Function(Errornotification value)? failure,
    TResult Function(pressedNotification value)? pressed,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Errornotification implements NotificationState {
  const factory Errornotification(final ApiErrorHandler error) =
      _$ErrornotificationImpl;

  ApiErrorHandler get error;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrornotificationImplCopyWith<_$ErrornotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$pressedNotificationImplCopyWith<$Res> {
  factory _$$pressedNotificationImplCopyWith(_$pressedNotificationImpl value,
          $Res Function(_$pressedNotificationImpl) then) =
      __$$pressedNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationModel? message});
}

/// @nodoc
class __$$pressedNotificationImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$pressedNotificationImpl>
    implements _$$pressedNotificationImplCopyWith<$Res> {
  __$$pressedNotificationImplCopyWithImpl(_$pressedNotificationImpl _value,
      $Res Function(_$pressedNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$pressedNotificationImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as NotificationModel?,
    ));
  }
}

/// @nodoc

class _$pressedNotificationImpl implements pressedNotification {
  const _$pressedNotificationImpl(this.message);

  @override
  final NotificationModel? message;

  @override
  String toString() {
    return 'NotificationState.pressed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$pressedNotificationImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$pressedNotificationImplCopyWith<_$pressedNotificationImpl> get copyWith =>
      __$$pressedNotificationImplCopyWithImpl<_$pressedNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function() loadone,
    required TResult Function(List<NotificationModel> modelList) success,
    required TResult Function(ApiErrorHandler error) failure,
    required TResult Function(NotificationModel? message) pressed,
  }) {
    return pressed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function()? loadone,
    TResult? Function(List<NotificationModel> modelList)? success,
    TResult? Function(ApiErrorHandler error)? failure,
    TResult? Function(NotificationModel? message)? pressed,
  }) {
    return pressed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function()? loadone,
    TResult Function(List<NotificationModel> modelList)? success,
    TResult Function(ApiErrorHandler error)? failure,
    TResult Function(NotificationModel? message)? pressed,
    required TResult orElse(),
  }) {
    if (pressed != null) {
      return pressed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingNotification value) load,
    required TResult Function(LoadingNotificationOne value) loadone,
    required TResult Function(Successnotifications value) success,
    required TResult Function(Errornotification value) failure,
    required TResult Function(pressedNotification value) pressed,
  }) {
    return pressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNotification value)? load,
    TResult? Function(LoadingNotificationOne value)? loadone,
    TResult? Function(Successnotifications value)? success,
    TResult? Function(Errornotification value)? failure,
    TResult? Function(pressedNotification value)? pressed,
  }) {
    return pressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNotification value)? load,
    TResult Function(LoadingNotificationOne value)? loadone,
    TResult Function(Successnotifications value)? success,
    TResult Function(Errornotification value)? failure,
    TResult Function(pressedNotification value)? pressed,
    required TResult orElse(),
  }) {
    if (pressed != null) {
      return pressed(this);
    }
    return orElse();
  }
}

abstract class pressedNotification implements NotificationState {
  const factory pressedNotification(final NotificationModel? message) =
      _$pressedNotificationImpl;

  NotificationModel? get message;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$pressedNotificationImplCopyWith<_$pressedNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
