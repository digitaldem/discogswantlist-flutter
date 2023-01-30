import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/marketplace_feed/marketplace_feed.dart';

// Include auto-generated code
part 'marketplace_feed_state.freezed.dart';

// Immutable
@freezed
class MarketplaceFeedState with _$MarketplaceFeedState {
  const factory MarketplaceFeedState.initial() = _Initial;
  const factory MarketplaceFeedState.loading() = _Loading;
  const factory MarketplaceFeedState.success(MarketplaceFeed data) = _MarketplaceFeed;
  const factory MarketplaceFeedState.error(Exception error) = _Error;
}

extension MarketplaceFeedStateX on MarketplaceFeedState {
  MarketplaceFeed? get success => maybeWhen(success: (data) => data, orElse: () => null);
}
