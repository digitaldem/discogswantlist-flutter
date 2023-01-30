// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wantlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WantList _$$_WantListFromJson(Map<String, dynamic> json) => _$_WantList(
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      wants: (json['wants'] as List<dynamic>)
          .map((e) => Want.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WantListToJson(_$_WantList instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'wants': instance.wants,
    };
