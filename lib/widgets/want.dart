import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './want_detail.dart';

class Want extends ConsumerWidget {
  // Ctor
  final int id;
  const Want({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const SizedBox(height: 8),
        WantDetail(id: id),
      ],
    );
  }
}
