// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wantlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WantListImpl _$$WantListImplFromJson(Map<String, dynamic> json) =>
    _$WantListImpl(
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      wants: (json['wants'] as List<dynamic>)
          .map((e) => Want.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WantListImplToJson(_$WantListImpl instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'wants': instance.wants,
    };
