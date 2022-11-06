// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> user) success,
    required TResult Function(String error) error,
    required TResult Function(List<Map<String, dynamic>> tasks) getTasks,
    required TResult Function(List<Map<String, dynamic>> tasks) getTasksOther,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> user)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<Map<String, dynamic>> tasks)? getTasks,
    TResult? Function(List<Map<String, dynamic>> tasks)? getTasksOther,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> user)? success,
    TResult Function(String error)? error,
    TResult Function(List<Map<String, dynamic>> tasks)? getTasks,
    TResult Function(List<Map<String, dynamic>> tasks)? getTasksOther,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessTasks value) getTasks,
    required TResult Function(_SuccessTasksOther value) getTasksOther,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessTasks value)? getTasks,
    TResult? Function(_SuccessTasksOther value)? getTasksOther,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessTasks value)? getTasks,
    TResult Function(_SuccessTasksOther value)? getTasksOther,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TaskState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> user) success,
    required TResult Function(String error) error,
    required TResult Function(List<Map<String, dynamic>> tasks) getTasks,
    required TResult Function(List<Map<String, dynamic>> tasks) getTasksOther,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> user)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<Map<String, dynamic>> tasks)? getTasks,
    TResult? Function(List<Map<String, dynamic>> tasks)? getTasksOther,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> user)? success,
    TResult Function(String error)? error,
    TResult Function(List<Map<String, dynamic>> tasks)? getTasks,
    TResult Function(List<Map<String, dynamic>> tasks)? getTasksOther,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessTasks value) getTasks,
    required TResult Function(_SuccessTasksOther value) getTasksOther,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessTasks value)? getTasks,
    TResult? Function(_SuccessTasksOther value)? getTasksOther,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessTasks value)? getTasks,
    TResult Function(_SuccessTasksOther value)? getTasksOther,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TaskState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TaskState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> user) success,
    required TResult Function(String error) error,
    required TResult Function(List<Map<String, dynamic>> tasks) getTasks,
    required TResult Function(List<Map<String, dynamic>> tasks) getTasksOther,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> user)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<Map<String, dynamic>> tasks)? getTasks,
    TResult? Function(List<Map<String, dynamic>> tasks)? getTasksOther,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> user)? success,
    TResult Function(String error)? error,
    TResult Function(List<Map<String, dynamic>> tasks)? getTasks,
    TResult Function(List<Map<String, dynamic>> tasks)? getTasksOther,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessTasks value) getTasks,
    required TResult Function(_SuccessTasksOther value) getTasksOther,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessTasks value)? getTasks,
    TResult? Function(_SuccessTasksOther value)? getTasksOther,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessTasks value)? getTasks,
    TResult Function(_SuccessTasksOther value)? getTasksOther,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TaskState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> user});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_Success(
      null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(final Map<String, dynamic> user) : _user = user;

  final Map<String, dynamic> _user;
  @override
  Map<String, dynamic> get user {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_user);
  }

  @override
  String toString() {
    return 'TaskState.success(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_user));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> user) success,
    required TResult Function(String error) error,
    required TResult Function(List<Map<String, dynamic>> tasks) getTasks,
    required TResult Function(List<Map<String, dynamic>> tasks) getTasksOther,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> user)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<Map<String, dynamic>> tasks)? getTasks,
    TResult? Function(List<Map<String, dynamic>> tasks)? getTasksOther,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> user)? success,
    TResult Function(String error)? error,
    TResult Function(List<Map<String, dynamic>> tasks)? getTasks,
    TResult Function(List<Map<String, dynamic>> tasks)? getTasksOther,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessTasks value) getTasks,
    required TResult Function(_SuccessTasksOther value) getTasksOther,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessTasks value)? getTasks,
    TResult? Function(_SuccessTasksOther value)? getTasksOther,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessTasks value)? getTasks,
    TResult Function(_SuccessTasksOther value)? getTasksOther,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements TaskState {
  const factory _Success(final Map<String, dynamic> user) = _$_Success;

  Map<String, dynamic> get user;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'TaskState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> user) success,
    required TResult Function(String error) error,
    required TResult Function(List<Map<String, dynamic>> tasks) getTasks,
    required TResult Function(List<Map<String, dynamic>> tasks) getTasksOther,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> user)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<Map<String, dynamic>> tasks)? getTasks,
    TResult? Function(List<Map<String, dynamic>> tasks)? getTasksOther,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> user)? success,
    TResult Function(String error)? error,
    TResult Function(List<Map<String, dynamic>> tasks)? getTasks,
    TResult Function(List<Map<String, dynamic>> tasks)? getTasksOther,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessTasks value) getTasks,
    required TResult Function(_SuccessTasksOther value) getTasksOther,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessTasks value)? getTasks,
    TResult? Function(_SuccessTasksOther value)? getTasksOther,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessTasks value)? getTasks,
    TResult Function(_SuccessTasksOther value)? getTasksOther,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TaskState {
  const factory _Error(final String error) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessTasksCopyWith<$Res> {
  factory _$$_SuccessTasksCopyWith(
          _$_SuccessTasks value, $Res Function(_$_SuccessTasks) then) =
      __$$_SuccessTasksCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> tasks});
}

/// @nodoc
class __$$_SuccessTasksCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_SuccessTasks>
    implements _$$_SuccessTasksCopyWith<$Res> {
  __$$_SuccessTasksCopyWithImpl(
      _$_SuccessTasks _value, $Res Function(_$_SuccessTasks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$_SuccessTasks(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_SuccessTasks implements _SuccessTasks {
  const _$_SuccessTasks(final List<Map<String, dynamic>> tasks)
      : _tasks = tasks;

  final List<Map<String, dynamic>> _tasks;
  @override
  List<Map<String, dynamic>> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskState.getTasks(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessTasks &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessTasksCopyWith<_$_SuccessTasks> get copyWith =>
      __$$_SuccessTasksCopyWithImpl<_$_SuccessTasks>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> user) success,
    required TResult Function(String error) error,
    required TResult Function(List<Map<String, dynamic>> tasks) getTasks,
    required TResult Function(List<Map<String, dynamic>> tasks) getTasksOther,
  }) {
    return getTasks(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> user)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<Map<String, dynamic>> tasks)? getTasks,
    TResult? Function(List<Map<String, dynamic>> tasks)? getTasksOther,
  }) {
    return getTasks?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> user)? success,
    TResult Function(String error)? error,
    TResult Function(List<Map<String, dynamic>> tasks)? getTasks,
    TResult Function(List<Map<String, dynamic>> tasks)? getTasksOther,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessTasks value) getTasks,
    required TResult Function(_SuccessTasksOther value) getTasksOther,
  }) {
    return getTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessTasks value)? getTasks,
    TResult? Function(_SuccessTasksOther value)? getTasksOther,
  }) {
    return getTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessTasks value)? getTasks,
    TResult Function(_SuccessTasksOther value)? getTasksOther,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks(this);
    }
    return orElse();
  }
}

abstract class _SuccessTasks implements TaskState {
  const factory _SuccessTasks(final List<Map<String, dynamic>> tasks) =
      _$_SuccessTasks;

  List<Map<String, dynamic>> get tasks;
  @JsonKey(ignore: true)
  _$$_SuccessTasksCopyWith<_$_SuccessTasks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessTasksOtherCopyWith<$Res> {
  factory _$$_SuccessTasksOtherCopyWith(_$_SuccessTasksOther value,
          $Res Function(_$_SuccessTasksOther) then) =
      __$$_SuccessTasksOtherCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> tasks});
}

/// @nodoc
class __$$_SuccessTasksOtherCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_SuccessTasksOther>
    implements _$$_SuccessTasksOtherCopyWith<$Res> {
  __$$_SuccessTasksOtherCopyWithImpl(
      _$_SuccessTasksOther _value, $Res Function(_$_SuccessTasksOther) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$_SuccessTasksOther(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_SuccessTasksOther implements _SuccessTasksOther {
  const _$_SuccessTasksOther(final List<Map<String, dynamic>> tasks)
      : _tasks = tasks;

  final List<Map<String, dynamic>> _tasks;
  @override
  List<Map<String, dynamic>> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskState.getTasksOther(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessTasksOther &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessTasksOtherCopyWith<_$_SuccessTasksOther> get copyWith =>
      __$$_SuccessTasksOtherCopyWithImpl<_$_SuccessTasksOther>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> user) success,
    required TResult Function(String error) error,
    required TResult Function(List<Map<String, dynamic>> tasks) getTasks,
    required TResult Function(List<Map<String, dynamic>> tasks) getTasksOther,
  }) {
    return getTasksOther(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> user)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<Map<String, dynamic>> tasks)? getTasks,
    TResult? Function(List<Map<String, dynamic>> tasks)? getTasksOther,
  }) {
    return getTasksOther?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> user)? success,
    TResult Function(String error)? error,
    TResult Function(List<Map<String, dynamic>> tasks)? getTasks,
    TResult Function(List<Map<String, dynamic>> tasks)? getTasksOther,
    required TResult orElse(),
  }) {
    if (getTasksOther != null) {
      return getTasksOther(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessTasks value) getTasks,
    required TResult Function(_SuccessTasksOther value) getTasksOther,
  }) {
    return getTasksOther(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessTasks value)? getTasks,
    TResult? Function(_SuccessTasksOther value)? getTasksOther,
  }) {
    return getTasksOther?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessTasks value)? getTasks,
    TResult Function(_SuccessTasksOther value)? getTasksOther,
    required TResult orElse(),
  }) {
    if (getTasksOther != null) {
      return getTasksOther(this);
    }
    return orElse();
  }
}

abstract class _SuccessTasksOther implements TaskState {
  const factory _SuccessTasksOther(final List<Map<String, dynamic>> tasks) =
      _$_SuccessTasksOther;

  List<Map<String, dynamic>> get tasks;
  @JsonKey(ignore: true)
  _$$_SuccessTasksOtherCopyWith<_$_SuccessTasksOther> get copyWith =>
      throw _privateConstructorUsedError;
}
