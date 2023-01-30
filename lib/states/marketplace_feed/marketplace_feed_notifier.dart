import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../services/marketplace_feed/marketplace_feed_service.dart';
import './marketplace_feed_state.dart';

// This provider is declared as Family since it requires a ReleaseID
// This provider has a dependency on MarketplaceFeedService
final marketplaceFeedStateNotifierProvider = StateNotifierProvider.family<MarketplaceFeedStateNotifier, MarketplaceFeedState, int>((ref, id) {
  // Bubble the Dispose event to invalidate the service for this ReleaseID as well
  ref.onDispose(() => ref.invalidate(marketplaceFeedServiceProvider(id)));
  return MarketplaceFeedStateNotifier(ref.watch(marketplaceFeedServiceProvider(id)));
}, name: 'MarketplaceFeedStateNotifier');

// Define a StateNotifier for the MarketplaceFeed service
class MarketplaceFeedStateNotifier extends StateNotifier<MarketplaceFeedState> {
  // Ctor
  final MarketplaceFeedService service;
  MarketplaceFeedStateNotifier(this.service) : super(const MarketplaceFeedState.initial());

  // Get MarketplaceFeed from service asynchronously
  Future<void> getMarketplaceFeed() async {
    // Move to loading state
    state = const MarketplaceFeedState.loading();

    // Get (and wait for) the data
    final result = await service.getMarketplaceFeed();
    // Coalesce the exception/results
    result.fold((l) {
      // Move to error state with exception
      state = MarketplaceFeedState.error(l);
    }, (r) {
      // Move to success state with results
      state = MarketplaceFeedState.success(r);
    });
  }

  // Reset
  void tryAgain() {
    // Move back to initial state
    state = const MarketplaceFeedState.initial();
  }
}
