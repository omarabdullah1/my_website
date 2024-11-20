// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      basic: Basic.fromJson(json['basic'] as Map<String, dynamic>),
      socials: (json['socials'] as List<dynamic>)
          .map((e) => Social.fromJson(e as Map<String, dynamic>))
          .toList(),
      about: About.fromJson(json['about'] as Map<String, dynamic>),
      services: (json['services'] as List<dynamic>)
          .map((e) => ServiceData.fromJson(e as Map<String, dynamic>))
          .toList(),
      projects: (json['projects'] as List<dynamic>)
          .map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList(),
      contact: (json['contact'] as List<dynamic>)
          .map((e) => Contact.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'basic': instance.basic,
      'socials': instance.socials,
      'about': instance.about,
      'services': instance.services,
      'projects': instance.projects,
      'contact': instance.contact,
    };
