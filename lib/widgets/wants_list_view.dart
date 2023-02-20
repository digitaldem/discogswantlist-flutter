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

    // Define a scroll controller to inform WantsScrollToTop state
    final ScrollController scrollController = ScrollController();
    scrollController.addListener(() {
      // Set WantsScrollToTop to true when listview is offset (scrolled)
      ref.read(wantsScrollToTopProvider.notifier).state = (scrollController.offset > 100);
    });

    // Render based on state
    return state.when(
      initial: () => const Expanded(child: Center(child: CircularProgressIndicator.adaptive())),
      loading: (progress) => Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Center(
            child: LinearProgressIndicator(
              color: Colors.black87,
              value: progress,
            ),
          ),
        ),
      ),
      success: (data) => Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Stack(children: [
            RefreshIndicator(
              onRefresh: () async {
                // Invalidate the state (and underlying local cache) for the entire MarketplaceFeed family
                ref.invalidate(marketplaceFeedStateNotifierProvider);
                // Invoke a force-fetch to refresh the Wants list
                ref.read(wantsStateNotifierProvider.notifier).getWants(true);
              },
              color: Colors.black87,
              child: ListView.builder(
                controller: scrollController,
                itemBuilder: (context, index) {
                  return Column(children: [
                    WantsListViewItem(
                      index: index + 1,
                      want: data[index],
                    ),
                    const SizedBox(
                      height: 16,
                    )
                  ]);
                },
                itemCount: data.length,
              ),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: Align(
                alignment: Alignment.bottomRight,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 500),
                  opacity: ref.watch(wantsScrollToTopProvider) ? 0.9 : 0.0,
                  child: FloatingActionButton(
                    backgroundColor: Colors.black87,
                    elevation: 10,
                    child: const Icon(Icons.arrow_upward),
                    onPressed: () {
                      // Scroll back up to the top
                      scrollController.animateTo(0, duration: const Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
                    },
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
      error: (error) => Expanded(child: Center(child: ErrorInfo(error: error))),
    );
  }
}
