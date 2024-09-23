import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_navigator/riverpod_navigator.dart';

import '../app_navigator.dart';
import '../widgets/wantlist.dart';

// Define segment for Strongly typed screens
class HomeSegment extends TypedSegment {
  const HomeSegment();
  factory HomeSegment.decode(UrlPars pars) => const HomeSegment();
}

// Define screen
class HomeScreen extends RScreen<AppNavigator, HomeSegment> {
  const HomeScreen(HomeSegment segment) : super(segment);

  // Build root Widget tree for this screen
  @override
  Widget buildScreen(BuildContext context, WidgetRef ref, AppNavigator navigator, IconButton? appBarLeading) => Scaffold(
        appBar: AppBar(
          title: const Text('Discogs Wantlist'),
        ),
        body: const Wantlist(),
      );
}
