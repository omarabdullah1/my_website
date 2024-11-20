// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AboutImpl _$$AboutImplFromJson(Map<String, dynamic> json) => _$AboutImpl(
      description: json['description'] as String,
      tech: (json['tech'] as List<dynamic>).map((e) => e as String).toList(),
      heading: json['heading'] as String,
    );

Map<String, dynamic> _$$AboutImplToJson(_$AboutImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'tech': instance.tech,
      'heading': instance.heading,
    };
