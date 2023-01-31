import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../services/wants/wants_service.dart';
import './wants_state.dart';

// Simple state provider to apply filtering logic
final wantsFilterProvider = StateProvider((ref) => '', name: 'WantsFilter');

// Simple state provider to show/hide scroll-to-top button
final wantsScrollToTopProvider = StateProvider((ref) => false, name: 'WantsScrollToTop');

// This provider has a dependency on WantsService
final wantsStateNotifierProvider =
    StateNotifierProvider<WantsStateNotifier, WantsState>((ref) => WantsStateNotifier(ref.watch(wantsServiceProvider)), name: 'WantsStateNotifier');

// Define a StateNotifier for the Wants service
class WantsStateNotifier extends StateNotifier<WantsState> {
  // Ctor
  final WantsService service;
  WantsStateNotifier(this.service) : super(const WantsState.initial());

  // Get Wants from service asynchronously
  Future<void> getWants(bool invalidateCache) async {
    if (invalidateCache) {
      // Reset to loading state if performing a forced refresh
      state = const WantsState.loading(0.0);
    }

    // Get (and don't wait for) the data, then coalesce the exception/results once returned
    service.getWants(invalidateCache).then((result) => result.fold((l) {
          // Move to error state with exception
          state = WantsState.error(l);
        }, (r) {
          // Move to success state with results
          state = WantsState.success(r);
        }));

    // Monitor the service download progress until complete
    double progress = 0.0;
    do {
      // Poll the current progress
      double newProgress = service.progress;
      if (newProgress > progress) {
        // Progress has changed, update state to reflect new percentage
        state = WantsState.loading(newProgress);
        progress = newProgress;
      }
      // Sleep
      await Future.delayed(const Duration(seconds: 1));
    } while (service.progress < 1.0);
  }
}
