import 'package:freezed_annotation/freezed_annotation.dart';

import '../marketplace_entry/marketplace_entry.dart';

part 'marketplace_feed.freezed.dart';
part 'marketplace_feed.g.dart';

@freezed
class MarketplaceFeed with _$MarketplaceFeed {
  factory MarketplaceFeed({
    required String id,
    required String title,
    required String updated,
    required List<MarketplaceEntry> entry,
  }) = _MarketplaceFeed;
  factory MarketplaceFeed.fromJson(Map<String, dynamic> json) => _$MarketplaceFeedFromJson(json);
}
