// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_icon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppIconModelImpl _$$AppIconModelImplFromJson(Map<String, dynamic> json) =>
    _$AppIconModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      iconPath: json['iconPath'] as String?,
      url: json['url'] as String,
      error: json['error'] == null
          ? null
          : ErrorModel.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppIconModelImplToJson(_$AppIconModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconPath': instance.iconPath,
      'url': instance.url,
      'error': instance.error,
    };
