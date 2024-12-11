import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_icon_model.freezed.dart';

part 'app_icon_model.g.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

@freezed
class AppIconModel with _$AppIconModel {
  const factory AppIconModel({
    required String name,
    required String? iconPath,
    required String url,
  }) = _AppIconModel;

  factory AppIconModel.fromJson(Map<String, Object?> json) =>
      _$AppIconModelFromJson(json);
}
