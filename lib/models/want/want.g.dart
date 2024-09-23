// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'want.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WantImpl _$$WantImplFromJson(Map<String, dynamic> json) => _$WantImpl(
      id: (json['id'] as num).toInt(),
      url: json['resource_url'] as String,
      rating: (json['rating'] as num).toInt(),
      dateAdded: json['date_added'] as String,
      information: Information.fromJson(
          json['basic_information'] as Map<String, dynamic>),
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$$WantImplToJson(_$WantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'resource_url': instance.url,
      'rating': instance.rating,
      'date_added': instance.dateAdded,
      'basic_information': instance.information,
      'notes': instance.notes,
    };
