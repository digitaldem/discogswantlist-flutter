import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_navigator/riverpod_navigator.dart';

import '../app_navigator.dart';
import '../widgets/want.dart';

// Define segment for Strongly typed screens
class WantSegment extends TypedSegment {
  const WantSegment({required this.id});
  factory WantSegment.decode(UrlPars pars) => WantSegment(id: pars.getInt('id'));

  // Routing parameter
  final int id;
  @override
  void encode(UrlPars pars) => pars.setInt('id', id);
}

// Define screen
class WantScreen extends RScreen<AppNavigator, WantSegment> {
  const WantScreen(WantSegment segment) : super(segment);

  // Build root Widget tree for this screen
  @override
  Widget buildScreen(BuildContext context, WidgetRef ref, AppNavigator navigator, IconButton? appBarLeading) => Scaffold(
        appBar: AppBar(
          title: const Text('Discogs Wantlist'),
          leading: appBarLeading,
        ),
        body: Want(id: segment.id),
      );
}
