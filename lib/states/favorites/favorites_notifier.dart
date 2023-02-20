import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../extensions/shared_preferences.dart';
import '../../services/shared_preferences/shared_preferences_service.dart';

final favoritesNotifierProvider = StateNotifierProvider<FavoritesNotifier, List<int>>(
    (ref) => FavoritesNotifier(ref.watch(sharedPreferencesServiceProvider.future)),
    name: 'FavoritesNotifier');

// Define a FavoritesNotifier for the Shared Preferences Service
class FavoritesNotifier extends StateNotifier<List<int>> {
  // Ctor
  final Future<SharedPreferences> sharedPreferences;
  FavoritesNotifier(this.sharedPreferences) : super([]) {
    // Initialize favorites (super) with empty list since the fetch must be performed async
    // then explciitly perform the async fetch of favorites from SharedPreferences and update
    _init();
  }

  Future<void> _init() async {
    // Get the stored value for favorites and replace the (empty list) state
    state = (await sharedPreferences).getIntList('favorites') ?? [];
  }

  FutureOr<void> toggle(int id) async {
    // Get the current stored value for favorites.
    List<int> newState = List<int>.from((await sharedPreferences).getIntList('favorites') ?? []);
    if (newState.contains(id)) {
      // ID found- Remove it
      newState.remove(id);
    } else {
      // ID not found- Add it
      newState.add(id);
    }
    // Store the updated value for favorites and replace the state
    (await sharedPreferences).setIntList('favorites', newState);
    state = newState;
  }
}
