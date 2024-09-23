import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './filter.dart';
import './wants_list_view.dart';

class Wantlist extends ConsumerWidget {
  // Ctor
  const Wantlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        SizedBox(height: 8),
        Filter(),
        WantsListView(),
      ],
    );
  }
}
