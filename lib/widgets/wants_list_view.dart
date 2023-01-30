import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../states/marketplace_feed/marketplace_feed_notifier.dart';
import '../states/wants/wants_state.dart';
import '../states/wants/wants_state_notifier.dart';
import './error_info.dart';
import './wants_list_view_item.dart';

class WantsListView extends ConsumerWidget {
  // Ctor
  const WantsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Dependency on the Wants state
    final state = ref.watch(wantsStateNotifierProvider);
    // If initial state, begin the data load after initial render
    if (state == const WantsState.initial()) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        // Load the data
        ref.read(wantsStateNotifierProvider.notifier).getWants(false);
      });
    }

    // Render based on state
    return state.when(
      initial: () => const Expanded(child: Center(child: CircularProgressIndicator.adaptive())),
      loading: (progress) => Expanded(
          child: Padding(padding: const EdgeInsets.only(left: 20, right: 20), child: Center(child: LinearProgressIndicator(value: progress)))),
      success: (data) => Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: RefreshIndicator(
            onRefresh: () async {
              // Invalidate the state (and underlying local cache) for the entire MarketplaceFeed family
              ref.invalidate(marketplaceFeedStateNotifierProvider);
              // Invoke a force-fetch to refresh the Wants list
              ref.read(wantsStateNotifierProvider.notifier).getWants(true);
            },
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(children: [
                  WantsListViewItem(
                      index: index + 1,
                      id: data[index].id,
                      artist: data[index].information.artist,
                      title: data[index].information.title,
                      imageUrl: data[index].information.image),
                  const SizedBox(
                    height: 16,
                  )
                ]);
              },
              itemCount: data.length,
            ),
          ),
        ),
      ),
      error: (error) => Expanded(child: Center(child: ErrorInfo(error: error))),
    );
  }
}
