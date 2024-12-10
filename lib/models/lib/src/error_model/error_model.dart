import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model.freezed.dart';

part 'error_model.g.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

@freezed
class ErrorModel with _$ErrorModel {
  const factory ErrorModel({
    required int code,
    required String description,
    @Default('') String guid,
    String? imagePathFromAssets,
  }) = _ErrorModel;

  factory ErrorModel.fromJson(Map<String, Object?> json) =>
      _$ErrorModelFromJson(json);
}
