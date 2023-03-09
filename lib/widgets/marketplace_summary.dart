import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../states/marketplace_feed/marketplace_feed_notifier.dart';
import '../states/marketplace_feed/marketplace_feed_state.dart';

class MarketplaceSummary extends ConsumerWidget {
  // Ctor
  final int id;
  const MarketplaceSummary({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Dependency on the MarketplaceFeed state
    final state = ref.watch(marketplaceFeedStateNotifierProvider(id));
    // If initial state, begin the data load after initial render
    if (state == const MarketplaceFeedState.initial()) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        // Load the data
        ref.watch(marketplaceFeedStateNotifierProvider(id).notifier).getMarketplaceFeed();
      });
    }

    // Render based on state
    return state.when(
      initial: () => const Center(child: CircularProgressIndicator.adaptive()),
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
      success: (data) => Text(
        '${data.entry.length} for sale',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      error: (error) => const Center(child: Text('Marketplace Error')),
    );
  }
}
