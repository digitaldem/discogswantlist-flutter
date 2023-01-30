import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/wants/wants_service.dart';

class Filter extends ConsumerWidget {
  // Ctor
  const Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Dependency on the WantsFilter state
    final value = ref.watch(wantsFilterProvider);

    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Search...',
        ),
        onChanged: (value) => ref.read(wantsFilterProvider.notifier).state = value, // Update filter state from user input
        initialValue: value,
      ),
    );
  }
}
