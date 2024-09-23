import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/marketplace_entry/marketplace_entry.dart';
import '../states/marketplace_feed/marketplace_feed_notifier.dart';
import '../states/marketplace_feed/marketplace_feed_state.dart';

class MarketplaceDetail extends ConsumerWidget {
  // Ctor
  final int id;
  const MarketplaceDetail({super.key, required this.id});

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
      initial: () => const Expanded(child: Center(child: CircularProgressIndicator.adaptive())),
      loading: () => const Expanded(child: Center(child: CircularProgressIndicator.adaptive())),
      success: (data) => Expanded(
        child: (data.entry.isEmpty)
            ? const Text('None Available')
            : ListView.builder(
                itemBuilder: (context, index) {
                  final List<MarketplaceEntry> entries = List.from(data.entry);
                  entries.sort();
                  return Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(entries[index].price, style: const TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(entries[index].notes),
                      ),
                      const SizedBox(
                        height: 15,
                      )
                    ],
                  );
                },
                itemCount: data.entry.length,
              ),
      ),
      error: (error) => const Center(child: Text('Marketplace Error')),
    );
  }
}
