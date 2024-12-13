// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() getAllApps,
    required TResult Function(AppIconModel app) addApp,
    required TResult Function(AppIconModel app) updateApp,
    required TResult Function(String id) deleteApp,
    required TResult Function(String error) addError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? getAllApps,
    TResult? Function(AppIconModel app)? addApp,
    TResult? Function(AppIconModel app)? updateApp,
    TResult? Function(String id)? deleteApp,
    TResult? Function(String error)? addError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? getAllApps,
    TResult Function(AppIconModel app)? addApp,
    TResult Function(AppIconModel app)? updateApp,
    TResult Function(String id)? deleteApp,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitMainEvent value) init,
    required TResult Function(_GetAllAppsMainEvent value) getAllApps,
    required TResult Function(_GetAppMainEvent value) addApp,
    required TResult Function(_UpdateAppMainEvent value) updateApp,
    required TResult Function(_DeleteAppMainEvent value) deleteApp,
    required TResult Function(_AddErrorMainEvent value) addError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitMainEvent value)? init,
    TResult? Function(_GetAllAppsMainEvent value)? getAllApps,
    TResult? Function(_GetAppMainEvent value)? addApp,
    TResult? Function(_UpdateAppMainEvent value)? updateApp,
    TResult? Function(_DeleteAppMainEvent value)? deleteApp,
    TResult? Function(_AddErrorMainEvent value)? addError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitMainEvent value)? init,
    TResult Function(_GetAllAppsMainEvent value)? getAllApps,
    TResult Function(_GetAppMainEvent value)? addApp,
    TResult Function(_UpdateAppMainEvent value)? updateApp,
    TResult Function(_DeleteAppMainEvent value)? deleteApp,
    TResult Function(_AddErrorMainEvent value)? addError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitMainEventImplCopyWith<$Res> {
  factory _$$InitMainEventImplCopyWith(
          _$InitMainEventImpl value, $Res Function(_$InitMainEventImpl) then) =
      __$$InitMainEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitMainEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$InitMainEventImpl>
    implements _$$InitMainEventImplCopyWith<$Res> {
  __$$InitMainEventImplCopyWithImpl(
      _$InitMainEventImpl _value, $Res Function(_$InitMainEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitMainEventImpl implements _InitMainEvent {
  const _$InitMainEventImpl();

  @override
  String toString() {
    return 'MainEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitMainEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() getAllApps,
    required TResult Function(AppIconModel app) addApp,
    required TResult Function(AppIconModel app) updateApp,
    required TResult Function(String id) deleteApp,
    required TResult Function(String error) addError,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? getAllApps,
    TResult? Function(AppIconModel app)? addApp,
    TResult? Function(AppIconModel app)? updateApp,
    TResult? Function(String id)? deleteApp,
    TResult? Function(String error)? addError,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? getAllApps,
    TResult Function(AppIconModel app)? addApp,
    TResult Function(AppIconModel app)? updateApp,
    TResult Function(String id)? deleteApp,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitMainEvent value) init,
    required TResult Function(_GetAllAppsMainEvent value) getAllApps,
    required TResult Function(_GetAppMainEvent value) addApp,
    required TResult Function(_UpdateAppMainEvent value) updateApp,
    required TResult Function(_DeleteAppMainEvent value) deleteApp,
    required TResult Function(_AddErrorMainEvent value) addError,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitMainEvent value)? init,
    TResult? Function(_GetAllAppsMainEvent value)? getAllApps,
    TResult? Function(_GetAppMainEvent value)? addApp,
    TResult? Function(_UpdateAppMainEvent value)? updateApp,
    TResult? Function(_DeleteAppMainEvent value)? deleteApp,
    TResult? Function(_AddErrorMainEvent value)? addError,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitMainEvent value)? init,
    TResult Function(_GetAllAppsMainEvent value)? getAllApps,
    TResult Function(_GetAppMainEvent value)? addApp,
    TResult Function(_UpdateAppMainEvent value)? updateApp,
    TResult Function(_DeleteAppMainEvent value)? deleteApp,
    TResult Function(_AddErrorMainEvent value)? addError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitMainEvent implements MainEvent {
  const factory _InitMainEvent() = _$InitMainEventImpl;
}

/// @nodoc
abstract class _$$GetAllAppsMainEventImplCopyWith<$Res> {
  factory _$$GetAllAppsMainEventImplCopyWith(_$GetAllAppsMainEventImpl value,
          $Res Function(_$GetAllAppsMainEventImpl) then) =
      __$$GetAllAppsMainEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllAppsMainEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$GetAllAppsMainEventImpl>
    implements _$$GetAllAppsMainEventImplCopyWith<$Res> {
  __$$GetAllAppsMainEventImplCopyWithImpl(_$GetAllAppsMainEventImpl _value,
      $Res Function(_$GetAllAppsMainEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllAppsMainEventImpl implements _GetAllAppsMainEvent {
  const _$GetAllAppsMainEventImpl();

  @override
  String toString() {
    return 'MainEvent.getAllApps()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllAppsMainEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() getAllApps,
    required TResult Function(AppIconModel app) addApp,
    required TResult Function(AppIconModel app) updateApp,
    required TResult Function(String id) deleteApp,
    required TResult Function(String error) addError,
  }) {
    return getAllApps();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? getAllApps,
    TResult? Function(AppIconModel app)? addApp,
    TResult? Function(AppIconModel app)? updateApp,
    TResult? Function(String id)? deleteApp,
    TResult? Function(String error)? addError,
  }) {
    return getAllApps?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? getAllApps,
    TResult Function(AppIconModel app)? addApp,
    TResult Function(AppIconModel app)? updateApp,
    TResult Function(String id)? deleteApp,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (getAllApps != null) {
      return getAllApps();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitMainEvent value) init,
    required TResult Function(_GetAllAppsMainEvent value) getAllApps,
    required TResult Function(_GetAppMainEvent value) addApp,
    required TResult Function(_UpdateAppMainEvent value) updateApp,
    required TResult Function(_DeleteAppMainEvent value) deleteApp,
    required TResult Function(_AddErrorMainEvent value) addError,
  }) {
    return getAllApps(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitMainEvent value)? init,
    TResult? Function(_GetAllAppsMainEvent value)? getAllApps,
    TResult? Function(_GetAppMainEvent value)? addApp,
    TResult? Function(_UpdateAppMainEvent value)? updateApp,
    TResult? Function(_DeleteAppMainEvent value)? deleteApp,
    TResult? Function(_AddErrorMainEvent value)? addError,
  }) {
    return getAllApps?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitMainEvent value)? init,
    TResult Function(_GetAllAppsMainEvent value)? getAllApps,
    TResult Function(_GetAppMainEvent value)? addApp,
    TResult Function(_UpdateAppMainEvent value)? updateApp,
    TResult Function(_DeleteAppMainEvent value)? deleteApp,
    TResult Function(_AddErrorMainEvent value)? addError,
    required TResult orElse(),
  }) {
    if (getAllApps != null) {
      return getAllApps(this);
    }
    return orElse();
  }
}

abstract class _GetAllAppsMainEvent implements MainEvent {
  const factory _GetAllAppsMainEvent() = _$GetAllAppsMainEventImpl;
}

/// @nodoc
abstract class _$$GetAppMainEventImplCopyWith<$Res> {
  factory _$$GetAppMainEventImplCopyWith(_$GetAppMainEventImpl value,
          $Res Function(_$GetAppMainEventImpl) then) =
      __$$GetAppMainEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppIconModel app});

  $AppIconModelCopyWith<$Res> get app;
}

/// @nodoc
class __$$GetAppMainEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$GetAppMainEventImpl>
    implements _$$GetAppMainEventImplCopyWith<$Res> {
  __$$GetAppMainEventImplCopyWithImpl(
      _$GetAppMainEventImpl _value, $Res Function(_$GetAppMainEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? app = null,
  }) {
    return _then(_$GetAppMainEventImpl(
      app: null == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as AppIconModel,
    ));
  }

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppIconModelCopyWith<$Res> get app {
    return $AppIconModelCopyWith<$Res>(_value.app, (value) {
      return _then(_value.copyWith(app: value));
    });
  }
}

/// @nodoc

class _$GetAppMainEventImpl implements _GetAppMainEvent {
  const _$GetAppMainEventImpl({required this.app});

  @override
  final AppIconModel app;

  @override
  String toString() {
    return 'MainEvent.addApp(app: $app)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAppMainEventImpl &&
            (identical(other.app, app) || other.app == app));
  }

  @override
  int get hashCode => Object.hash(runtimeType, app);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAppMainEventImplCopyWith<_$GetAppMainEventImpl> get copyWith =>
      __$$GetAppMainEventImplCopyWithImpl<_$GetAppMainEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() getAllApps,
    required TResult Function(AppIconModel app) addApp,
    required TResult Function(AppIconModel app) updateApp,
    required TResult Function(String id) deleteApp,
    required TResult Function(String error) addError,
  }) {
    return addApp(app);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? getAllApps,
    TResult? Function(AppIconModel app)? addApp,
    TResult? Function(AppIconModel app)? updateApp,
    TResult? Function(String id)? deleteApp,
    TResult? Function(String error)? addError,
  }) {
    return addApp?.call(app);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? getAllApps,
    TResult Function(AppIconModel app)? addApp,
    TResult Function(AppIconModel app)? updateApp,
    TResult Function(String id)? deleteApp,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (addApp != null) {
      return addApp(app);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitMainEvent value) init,
    required TResult Function(_GetAllAppsMainEvent value) getAllApps,
    required TResult Function(_GetAppMainEvent value) addApp,
    required TResult Function(_UpdateAppMainEvent value) updateApp,
    required TResult Function(_DeleteAppMainEvent value) deleteApp,
    required TResult Function(_AddErrorMainEvent value) addError,
  }) {
    return addApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitMainEvent value)? init,
    TResult? Function(_GetAllAppsMainEvent value)? getAllApps,
    TResult? Function(_GetAppMainEvent value)? addApp,
    TResult? Function(_UpdateAppMainEvent value)? updateApp,
    TResult? Function(_DeleteAppMainEvent value)? deleteApp,
    TResult? Function(_AddErrorMainEvent value)? addError,
  }) {
    return addApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitMainEvent value)? init,
    TResult Function(_GetAllAppsMainEvent value)? getAllApps,
    TResult Function(_GetAppMainEvent value)? addApp,
    TResult Function(_UpdateAppMainEvent value)? updateApp,
    TResult Function(_DeleteAppMainEvent value)? deleteApp,
    TResult Function(_AddErrorMainEvent value)? addError,
    required TResult orElse(),
  }) {
    if (addApp != null) {
      return addApp(this);
    }
    return orElse();
  }
}

abstract class _GetAppMainEvent implements MainEvent {
  const factory _GetAppMainEvent({required final AppIconModel app}) =
      _$GetAppMainEventImpl;

  AppIconModel get app;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAppMainEventImplCopyWith<_$GetAppMainEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAppMainEventImplCopyWith<$Res> {
  factory _$$UpdateAppMainEventImplCopyWith(_$UpdateAppMainEventImpl value,
          $Res Function(_$UpdateAppMainEventImpl) then) =
      __$$UpdateAppMainEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppIconModel app});

  $AppIconModelCopyWith<$Res> get app;
}

/// @nodoc
class __$$UpdateAppMainEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$UpdateAppMainEventImpl>
    implements _$$UpdateAppMainEventImplCopyWith<$Res> {
  __$$UpdateAppMainEventImplCopyWithImpl(_$UpdateAppMainEventImpl _value,
      $Res Function(_$UpdateAppMainEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? app = null,
  }) {
    return _then(_$UpdateAppMainEventImpl(
      app: null == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as AppIconModel,
    ));
  }

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppIconModelCopyWith<$Res> get app {
    return $AppIconModelCopyWith<$Res>(_value.app, (value) {
      return _then(_value.copyWith(app: value));
    });
  }
}

/// @nodoc

class _$UpdateAppMainEventImpl implements _UpdateAppMainEvent {
  const _$UpdateAppMainEventImpl({required this.app});

  @override
  final AppIconModel app;

  @override
  String toString() {
    return 'MainEvent.updateApp(app: $app)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppMainEventImpl &&
            (identical(other.app, app) || other.app == app));
  }

  @override
  int get hashCode => Object.hash(runtimeType, app);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAppMainEventImplCopyWith<_$UpdateAppMainEventImpl> get copyWith =>
      __$$UpdateAppMainEventImplCopyWithImpl<_$UpdateAppMainEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() getAllApps,
    required TResult Function(AppIconModel app) addApp,
    required TResult Function(AppIconModel app) updateApp,
    required TResult Function(String id) deleteApp,
    required TResult Function(String error) addError,
  }) {
    return updateApp(app);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? getAllApps,
    TResult? Function(AppIconModel app)? addApp,
    TResult? Function(AppIconModel app)? updateApp,
    TResult? Function(String id)? deleteApp,
    TResult? Function(String error)? addError,
  }) {
    return updateApp?.call(app);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? getAllApps,
    TResult Function(AppIconModel app)? addApp,
    TResult Function(AppIconModel app)? updateApp,
    TResult Function(String id)? deleteApp,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (updateApp != null) {
      return updateApp(app);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitMainEvent value) init,
    required TResult Function(_GetAllAppsMainEvent value) getAllApps,
    required TResult Function(_GetAppMainEvent value) addApp,
    required TResult Function(_UpdateAppMainEvent value) updateApp,
    required TResult Function(_DeleteAppMainEvent value) deleteApp,
    required TResult Function(_AddErrorMainEvent value) addError,
  }) {
    return updateApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitMainEvent value)? init,
    TResult? Function(_GetAllAppsMainEvent value)? getAllApps,
    TResult? Function(_GetAppMainEvent value)? addApp,
    TResult? Function(_UpdateAppMainEvent value)? updateApp,
    TResult? Function(_DeleteAppMainEvent value)? deleteApp,
    TResult? Function(_AddErrorMainEvent value)? addError,
  }) {
    return updateApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitMainEvent value)? init,
    TResult Function(_GetAllAppsMainEvent value)? getAllApps,
    TResult Function(_GetAppMainEvent value)? addApp,
    TResult Function(_UpdateAppMainEvent value)? updateApp,
    TResult Function(_DeleteAppMainEvent value)? deleteApp,
    TResult Function(_AddErrorMainEvent value)? addError,
    required TResult orElse(),
  }) {
    if (updateApp != null) {
      return updateApp(this);
    }
    return orElse();
  }
}

abstract class _UpdateAppMainEvent implements MainEvent {
  const factory _UpdateAppMainEvent({required final AppIconModel app}) =
      _$UpdateAppMainEventImpl;

  AppIconModel get app;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAppMainEventImplCopyWith<_$UpdateAppMainEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAppMainEventImplCopyWith<$Res> {
  factory _$$DeleteAppMainEventImplCopyWith(_$DeleteAppMainEventImpl value,
          $Res Function(_$DeleteAppMainEventImpl) then) =
      __$$DeleteAppMainEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteAppMainEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$DeleteAppMainEventImpl>
    implements _$$DeleteAppMainEventImplCopyWith<$Res> {
  __$$DeleteAppMainEventImplCopyWithImpl(_$DeleteAppMainEventImpl _value,
      $Res Function(_$DeleteAppMainEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteAppMainEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteAppMainEventImpl implements _DeleteAppMainEvent {
  const _$DeleteAppMainEventImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'MainEvent.deleteApp(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAppMainEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAppMainEventImplCopyWith<_$DeleteAppMainEventImpl> get copyWith =>
      __$$DeleteAppMainEventImplCopyWithImpl<_$DeleteAppMainEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() getAllApps,
    required TResult Function(AppIconModel app) addApp,
    required TResult Function(AppIconModel app) updateApp,
    required TResult Function(String id) deleteApp,
    required TResult Function(String error) addError,
  }) {
    return deleteApp(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? getAllApps,
    TResult? Function(AppIconModel app)? addApp,
    TResult? Function(AppIconModel app)? updateApp,
    TResult? Function(String id)? deleteApp,
    TResult? Function(String error)? addError,
  }) {
    return deleteApp?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? getAllApps,
    TResult Function(AppIconModel app)? addApp,
    TResult Function(AppIconModel app)? updateApp,
    TResult Function(String id)? deleteApp,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (deleteApp != null) {
      return deleteApp(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitMainEvent value) init,
    required TResult Function(_GetAllAppsMainEvent value) getAllApps,
    required TResult Function(_GetAppMainEvent value) addApp,
    required TResult Function(_UpdateAppMainEvent value) updateApp,
    required TResult Function(_DeleteAppMainEvent value) deleteApp,
    required TResult Function(_AddErrorMainEvent value) addError,
  }) {
    return deleteApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitMainEvent value)? init,
    TResult? Function(_GetAllAppsMainEvent value)? getAllApps,
    TResult? Function(_GetAppMainEvent value)? addApp,
    TResult? Function(_UpdateAppMainEvent value)? updateApp,
    TResult? Function(_DeleteAppMainEvent value)? deleteApp,
    TResult? Function(_AddErrorMainEvent value)? addError,
  }) {
    return deleteApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitMainEvent value)? init,
    TResult Function(_GetAllAppsMainEvent value)? getAllApps,
    TResult Function(_GetAppMainEvent value)? addApp,
    TResult Function(_UpdateAppMainEvent value)? updateApp,
    TResult Function(_DeleteAppMainEvent value)? deleteApp,
    TResult Function(_AddErrorMainEvent value)? addError,
    required TResult orElse(),
  }) {
    if (deleteApp != null) {
      return deleteApp(this);
    }
    return orElse();
  }
}

abstract class _DeleteAppMainEvent implements MainEvent {
  const factory _DeleteAppMainEvent({required final String id}) =
      _$DeleteAppMainEventImpl;

  String get id;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteAppMainEventImplCopyWith<_$DeleteAppMainEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddErrorMainEventImplCopyWith<$Res> {
  factory _$$AddErrorMainEventImplCopyWith(_$AddErrorMainEventImpl value,
          $Res Function(_$AddErrorMainEventImpl) then) =
      __$$AddErrorMainEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AddErrorMainEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$AddErrorMainEventImpl>
    implements _$$AddErrorMainEventImplCopyWith<$Res> {
  __$$AddErrorMainEventImplCopyWithImpl(_$AddErrorMainEventImpl _value,
      $Res Function(_$AddErrorMainEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AddErrorMainEventImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddErrorMainEventImpl implements _AddErrorMainEvent {
  const _$AddErrorMainEventImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'MainEvent.addError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddErrorMainEventImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddErrorMainEventImplCopyWith<_$AddErrorMainEventImpl> get copyWith =>
      __$$AddErrorMainEventImplCopyWithImpl<_$AddErrorMainEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() getAllApps,
    required TResult Function(AppIconModel app) addApp,
    required TResult Function(AppIconModel app) updateApp,
    required TResult Function(String id) deleteApp,
    required TResult Function(String error) addError,
  }) {
    return addError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? getAllApps,
    TResult? Function(AppIconModel app)? addApp,
    TResult? Function(AppIconModel app)? updateApp,
    TResult? Function(String id)? deleteApp,
    TResult? Function(String error)? addError,
  }) {
    return addError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? getAllApps,
    TResult Function(AppIconModel app)? addApp,
    TResult Function(AppIconModel app)? updateApp,
    TResult Function(String id)? deleteApp,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (addError != null) {
      return addError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitMainEvent value) init,
    required TResult Function(_GetAllAppsMainEvent value) getAllApps,
    required TResult Function(_GetAppMainEvent value) addApp,
    required TResult Function(_UpdateAppMainEvent value) updateApp,
    required TResult Function(_DeleteAppMainEvent value) deleteApp,
    required TResult Function(_AddErrorMainEvent value) addError,
  }) {
    return addError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitMainEvent value)? init,
    TResult? Function(_GetAllAppsMainEvent value)? getAllApps,
    TResult? Function(_GetAppMainEvent value)? addApp,
    TResult? Function(_UpdateAppMainEvent value)? updateApp,
    TResult? Function(_DeleteAppMainEvent value)? deleteApp,
    TResult? Function(_AddErrorMainEvent value)? addError,
  }) {
    return addError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitMainEvent value)? init,
    TResult Function(_GetAllAppsMainEvent value)? getAllApps,
    TResult Function(_GetAppMainEvent value)? addApp,
    TResult Function(_UpdateAppMainEvent value)? updateApp,
    TResult Function(_DeleteAppMainEvent value)? deleteApp,
    TResult Function(_AddErrorMainEvent value)? addError,
    required TResult orElse(),
  }) {
    if (addError != null) {
      return addError(this);
    }
    return orElse();
  }
}

abstract class _AddErrorMainEvent implements MainEvent {
  const factory _AddErrorMainEvent({required final String error}) =
      _$AddErrorMainEventImpl;

  String get error;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddErrorMainEventImplCopyWith<_$AddErrorMainEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  bool get isLoading => throw _privateConstructorUsedError;
  Set<AppIconModel> get apps => throw _privateConstructorUsedError;
  ErrorModel? get error => throw _privateConstructorUsedError;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call({bool isLoading, Set<AppIconModel> apps, ErrorModel? error});

  $ErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? apps = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      apps: null == apps
          ? _value.apps
          : apps // ignore: cast_nullable_to_non_nullable
              as Set<AppIconModel>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
    ) as $Val);
  }

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorModelCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorModelCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainStateImplCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory _$$MainStateImplCopyWith(
          _$MainStateImpl value, $Res Function(_$MainStateImpl) then) =
      __$$MainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Set<AppIconModel> apps, ErrorModel? error});

  @override
  $ErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class __$$MainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateImpl>
    implements _$$MainStateImplCopyWith<$Res> {
  __$$MainStateImplCopyWithImpl(
      _$MainStateImpl _value, $Res Function(_$MainStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? apps = null,
    Object? error = freezed,
  }) {
    return _then(_$MainStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      apps: null == apps
          ? _value._apps
          : apps // ignore: cast_nullable_to_non_nullable
              as Set<AppIconModel>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
    ));
  }
}

/// @nodoc

class _$MainStateImpl implements _MainState {
  const _$MainStateImpl(
      {this.isLoading = true,
      final Set<AppIconModel> apps = const {},
      this.error})
      : _apps = apps;

  @override
  @JsonKey()
  final bool isLoading;
  final Set<AppIconModel> _apps;
  @override
  @JsonKey()
  Set<AppIconModel> get apps {
    if (_apps is EqualUnmodifiableSetView) return _apps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_apps);
  }

  @override
  final ErrorModel? error;

  @override
  String toString() {
    return 'MainState(isLoading: $isLoading, apps: $apps, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._apps, _apps) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_apps), error);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      __$$MainStateImplCopyWithImpl<_$MainStateImpl>(this, _$identity);
}

abstract class _MainState implements MainState {
  const factory _MainState(
      {final bool isLoading,
      final Set<AppIconModel> apps,
      final ErrorModel? error}) = _$MainStateImpl;

  @override
  bool get isLoading;
  @override
  Set<AppIconModel> get apps;
  @override
  ErrorModel? get error;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
