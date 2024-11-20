import 'package:freezed_annotation/freezed_annotation.dart';

import 'about.dart';
import 'basic.dart';
import 'contact.dart';
import 'project.dart';
import 'service_data.dart';
import 'social.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  const factory Data({
    required Basic basic,
    required List<Social> socials,
    required About about,
    required List<ServiceData> services,
    required List<Project> projects,
    required List<Contact> contact,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}
