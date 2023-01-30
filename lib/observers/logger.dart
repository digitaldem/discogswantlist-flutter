import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// A simple logging observer to print provider updates
class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    // Print friendly name (if available) and the value update
    log('[${provider.name ?? provider.runtimeType}] value: ${previousValue.toString()} --> ${newValue.toString()}');
  }
}
