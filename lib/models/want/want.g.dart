// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'want.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Want _$$_WantFromJson(Map<String, dynamic> json) => _$_Want(
      id: json['id'] as int,
      url: json['resource_url'] as String,
      rating: json['rating'] as int,
      dateAdded: json['date_added'] as String,
      information: Information.fromJson(
          json['basic_information'] as Map<String, dynamic>),
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$$_WantToJson(_$_Want instance) => <String, dynamic>{
      'id': instance.id,
      'resource_url': instance.url,
      'rating': instance.rating,
      'date_added': instance.dateAdded,
      'basic_information': instance.information,
      'notes': instance.notes,
    };
