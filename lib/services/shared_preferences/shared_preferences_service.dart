import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// This provider has no dependencies
final sharedPreferencesServiceProvider =
    FutureProvider<SharedPreferences>((ref) async => await SharedPreferences.getInstance(), name: 'SharedPreferencesService');
