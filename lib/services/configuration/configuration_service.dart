import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/configuration/configuration.dart';

// This provider has no dependencies
final configurationServiceProvider = FutureProvider<Configuration>((ref) async {
  // Load flat JSON file from assets
  final content = json.decode(await rootBundle.loadString('assets/configuration.json')) as Map<String, Object?>;
  // Deserialize to Configuration model
  return Configuration.fromJson(content);
}, name: 'ConfigurationService');
