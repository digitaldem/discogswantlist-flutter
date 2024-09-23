// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InformationImpl _$$InformationImplFromJson(Map<String, dynamic> json) =>
    _$InformationImpl(
      id: (json['id'] as num).toInt(),
      url: json['resource_url'] as String,
      title: json['title'] as String,
      year: (json['year'] as num).toInt(),
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

Map<String, dynamic> _$$InformationImplToJson(_$InformationImpl instance) =>
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
