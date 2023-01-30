// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketplace_feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarketplaceFeed _$$_MarketplaceFeedFromJson(Map<String, dynamic> json) =>
    _$_MarketplaceFeed(
      id: json['id'] as String,
      title: json['title'] as String,
      updated: json['updated'] as String,
      entry: (json['entry'] as List<dynamic>)
          .map((e) => MarketplaceEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MarketplaceFeedToJson(_$_MarketplaceFeed instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'updated': instance.updated,
      'entry': instance.entry,
    };
