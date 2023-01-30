// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Information _$$_InformationFromJson(Map<String, dynamic> json) =>
    _$_Information(
      id: json['id'] as int,
      url: json['resource_url'] as String,
      title: json['title'] as String,
      year: json['year'] as int,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      thumb: json['thumb'] as String,
      image: json['cover_image'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      styles:
          (json['styles'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_InformationToJson(_$_Information instance) =>
    <String, dynamic>{
      'id': instance.id,
      'resource_url': instance.url,
      'title': instance.title,
      'year': instance.year,
      'artists': instance.artists,
      'thumb': instance.thumb,
      'cover_image': instance.image,
      'genres': instance.genres,
      'styles': instance.styles,
    };
