// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorModelImpl _$$ErrorModelImplFromJson(Map<String, dynamic> json) =>
    _$ErrorModelImpl(
      code: (json['code'] as num).toInt(),
      description: json['description'] as String,
      guid: json['guid'] as String? ?? '',
      imagePathFromAssets: json['imagePathFromAssets'] as String?,
    );

Map<String, dynamic> _$$ErrorModelImplToJson(_$ErrorModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'guid': instance.guid,
      'imagePathFromAssets': instance.imagePathFromAssets,
    };
