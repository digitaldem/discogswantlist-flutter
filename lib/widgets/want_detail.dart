import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../states/wants/wants_state_notifier.dart';
import './error_info.dart';
import './marketplace_detail.dart';
import './want_tile.dart';

class WantDetail extends ConsumerWidget {
  // Ctor
  final int id;
  const WantDetail({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Dependency on the Wants state
    final state = ref.watch(wantsStateNotifierProvider);
    // Begin the data load after render
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // Load the data
      ref.read(wantsStateNotifierProvider.notifier).getWants(false);
    });

    // Render based on state
    return state.when(
      initial: () => const Expanded(child: Center(child: CircularProgressIndicator.adaptive())),
      loading: (progress) => const Expanded(child: Center(child: CircularProgressIndicator.adaptive())),
      success: (data) => Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(children: [
              WantTile(
                id: id,
                artist: data.firstWhere((element) => element.id == id).information.artist,
                title: data.firstWhere((element) => element.id == id).information.title,
                imageUrl: data.firstWhere((element) => element.id == id).information.image,
              ),
              MarketplaceDetail(id: id),
            ]),
          ),
        ),
      ),
      error: (error) => Expanded(child: Center(child: ErrorInfo(error: error))),
    );
  }
}
