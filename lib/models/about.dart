import 'package:freezed_annotation/freezed_annotation.dart';

part 'about.freezed.dart';
part 'about.g.dart';

@freezed
class About with _$About {
  const factory About({
    required String description,
    required List<String> tech,
    required String heading,
  }) = _About;

  factory About.fromJson(Map<String, Object?> json) => _$AboutFromJson(json);
}
