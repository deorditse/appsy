// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_icon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppIconModel _$AppIconModelFromJson(Map<String, dynamic> json) {
  return _AppIconModel.fromJson(json);
}

/// @nodoc
mixin _$AppIconModel {
  String get name => throw _privateConstructorUsedError;
  String? get iconPath => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this AppIconModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppIconModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppIconModelCopyWith<AppIconModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppIconModelCopyWith<$Res> {
  factory $AppIconModelCopyWith(
          AppIconModel value, $Res Function(AppIconModel) then) =
      _$AppIconModelCopyWithImpl<$Res, AppIconModel>;
  @useResult
  $Res call({String name, String? iconPath, String url});
}

/// @nodoc
class _$AppIconModelCopyWithImpl<$Res, $Val extends AppIconModel>
    implements $AppIconModelCopyWith<$Res> {
  _$AppIconModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppIconModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconPath = freezed,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: freezed == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppIconModelImplCopyWith<$Res>
    implements $AppIconModelCopyWith<$Res> {
  factory _$$AppIconModelImplCopyWith(
          _$AppIconModelImpl value, $Res Function(_$AppIconModelImpl) then) =
      __$$AppIconModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? iconPath, String url});
}

/// @nodoc
class __$$AppIconModelImplCopyWithImpl<$Res>
    extends _$AppIconModelCopyWithImpl<$Res, _$AppIconModelImpl>
    implements _$$AppIconModelImplCopyWith<$Res> {
  __$$AppIconModelImplCopyWithImpl(
      _$AppIconModelImpl _value, $Res Function(_$AppIconModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppIconModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconPath = freezed,
    Object? url = null,
  }) {
    return _then(_$AppIconModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: freezed == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppIconModelImpl implements _AppIconModel {
  const _$AppIconModelImpl(
      {required this.name, required this.iconPath, required this.url});

  factory _$AppIconModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppIconModelImplFromJson(json);

  @override
  final String name;
  @override
  final String? iconPath;
  @override
  final String url;

  @override
  String toString() {
    return 'AppIconModel(name: $name, iconPath: $iconPath, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppIconModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, iconPath, url);

  /// Create a copy of AppIconModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppIconModelImplCopyWith<_$AppIconModelImpl> get copyWith =>
      __$$AppIconModelImplCopyWithImpl<_$AppIconModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppIconModelImplToJson(
      this,
    );
  }
}

abstract class _AppIconModel implements AppIconModel {
  const factory _AppIconModel(
      {required final String name,
      required final String? iconPath,
      required final String url}) = _$AppIconModelImpl;

  factory _AppIconModel.fromJson(Map<String, dynamic> json) =
      _$AppIconModelImpl.fromJson;

  @override
  String get name;
  @override
  String? get iconPath;
  @override
  String get url;

  /// Create a copy of AppIconModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppIconModelImplCopyWith<_$AppIconModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}