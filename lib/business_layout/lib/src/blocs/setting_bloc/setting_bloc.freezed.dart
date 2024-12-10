// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(MyLocales newLocale) changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(MyLocales newLocale)? changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(MyLocales newLocale)? changeLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitSettingEvent value) init,
    required TResult Function(_ChangeLocaleSettingEvent value) changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitSettingEvent value)? init,
    TResult? Function(_ChangeLocaleSettingEvent value)? changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitSettingEvent value)? init,
    TResult Function(_ChangeLocaleSettingEvent value)? changeLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingEventCopyWith<$Res> {
  factory $SettingEventCopyWith(
          SettingEvent value, $Res Function(SettingEvent) then) =
      _$SettingEventCopyWithImpl<$Res, SettingEvent>;
}

/// @nodoc
class _$SettingEventCopyWithImpl<$Res, $Val extends SettingEvent>
    implements $SettingEventCopyWith<$Res> {
  _$SettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitSettingEventImplCopyWith<$Res> {
  factory _$$InitSettingEventImplCopyWith(_$InitSettingEventImpl value,
          $Res Function(_$InitSettingEventImpl) then) =
      __$$InitSettingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitSettingEventImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$InitSettingEventImpl>
    implements _$$InitSettingEventImplCopyWith<$Res> {
  __$$InitSettingEventImplCopyWithImpl(_$InitSettingEventImpl _value,
      $Res Function(_$InitSettingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitSettingEventImpl implements _InitSettingEvent {
  const _$InitSettingEventImpl();

  @override
  String toString() {
    return 'SettingEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitSettingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(MyLocales newLocale) changeLocale,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(MyLocales newLocale)? changeLocale,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(MyLocales newLocale)? changeLocale,
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
    required TResult Function(_InitSettingEvent value) init,
    required TResult Function(_ChangeLocaleSettingEvent value) changeLocale,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitSettingEvent value)? init,
    TResult? Function(_ChangeLocaleSettingEvent value)? changeLocale,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitSettingEvent value)? init,
    TResult Function(_ChangeLocaleSettingEvent value)? changeLocale,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitSettingEvent implements SettingEvent {
  const factory _InitSettingEvent() = _$InitSettingEventImpl;
}

/// @nodoc
abstract class _$$ChangeLocaleSettingEventImplCopyWith<$Res> {
  factory _$$ChangeLocaleSettingEventImplCopyWith(
          _$ChangeLocaleSettingEventImpl value,
          $Res Function(_$ChangeLocaleSettingEventImpl) then) =
      __$$ChangeLocaleSettingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MyLocales newLocale});
}

/// @nodoc
class __$$ChangeLocaleSettingEventImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$ChangeLocaleSettingEventImpl>
    implements _$$ChangeLocaleSettingEventImplCopyWith<$Res> {
  __$$ChangeLocaleSettingEventImplCopyWithImpl(
      _$ChangeLocaleSettingEventImpl _value,
      $Res Function(_$ChangeLocaleSettingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newLocale = null,
  }) {
    return _then(_$ChangeLocaleSettingEventImpl(
      newLocale: null == newLocale
          ? _value.newLocale
          : newLocale // ignore: cast_nullable_to_non_nullable
              as MyLocales,
    ));
  }
}

/// @nodoc

class _$ChangeLocaleSettingEventImpl implements _ChangeLocaleSettingEvent {
  const _$ChangeLocaleSettingEventImpl({required this.newLocale});

  @override
  final MyLocales newLocale;

  @override
  String toString() {
    return 'SettingEvent.changeLocale(newLocale: $newLocale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLocaleSettingEventImpl &&
            (identical(other.newLocale, newLocale) ||
                other.newLocale == newLocale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newLocale);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLocaleSettingEventImplCopyWith<_$ChangeLocaleSettingEventImpl>
      get copyWith => __$$ChangeLocaleSettingEventImplCopyWithImpl<
          _$ChangeLocaleSettingEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(MyLocales newLocale) changeLocale,
  }) {
    return changeLocale(newLocale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(MyLocales newLocale)? changeLocale,
  }) {
    return changeLocale?.call(newLocale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(MyLocales newLocale)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(newLocale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitSettingEvent value) init,
    required TResult Function(_ChangeLocaleSettingEvent value) changeLocale,
  }) {
    return changeLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitSettingEvent value)? init,
    TResult? Function(_ChangeLocaleSettingEvent value)? changeLocale,
  }) {
    return changeLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitSettingEvent value)? init,
    TResult Function(_ChangeLocaleSettingEvent value)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(this);
    }
    return orElse();
  }
}

abstract class _ChangeLocaleSettingEvent implements SettingEvent {
  const factory _ChangeLocaleSettingEvent(
      {required final MyLocales newLocale}) = _$ChangeLocaleSettingEventImpl;

  MyLocales get newLocale;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeLocaleSettingEventImplCopyWith<_$ChangeLocaleSettingEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingState {
  Locale get currentLocale => throw _privateConstructorUsedError;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res, SettingState>;
  @useResult
  $Res call({Locale currentLocale});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocale = null,
  }) {
    return _then(_value.copyWith(
      currentLocale: null == currentLocale
          ? _value.currentLocale
          : currentLocale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingStateImplCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$SettingStateImplCopyWith(
          _$SettingStateImpl value, $Res Function(_$SettingStateImpl) then) =
      __$$SettingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locale currentLocale});
}

/// @nodoc
class __$$SettingStateImplCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingStateImpl>
    implements _$$SettingStateImplCopyWith<$Res> {
  __$$SettingStateImplCopyWithImpl(
      _$SettingStateImpl _value, $Res Function(_$SettingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocale = null,
  }) {
    return _then(_$SettingStateImpl(
      currentLocale: null == currentLocale
          ? _value.currentLocale
          : currentLocale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$SettingStateImpl implements _SettingState {
  const _$SettingStateImpl(
      {this.currentLocale = const Locale.fromSubtags(languageCode: 'ru')});

  @override
  @JsonKey()
  final Locale currentLocale;

  @override
  String toString() {
    return 'SettingState(currentLocale: $currentLocale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingStateImpl &&
            (identical(other.currentLocale, currentLocale) ||
                other.currentLocale == currentLocale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentLocale);

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      __$$SettingStateImplCopyWithImpl<_$SettingStateImpl>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  const factory _SettingState({final Locale currentLocale}) =
      _$SettingStateImpl;

  @override
  Locale get currentLocale;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
