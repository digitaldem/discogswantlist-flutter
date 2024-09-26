import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../states/wants/wants_state_notifier.dart';

class Filter extends ConsumerWidget {
  // Ctor
  const Filter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Dependency on the WantsFilter state
    final value = ref.watch(wantsFilterProvider);
    final controller = TextEditingController(text: value);
    controller.value = TextEditingValue(
      text: value,
      selection: TextSelection.fromPosition(
        TextPosition(offset: value.length),
      ),
    );

    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(),
          labelText: 'Search...',
          labelStyle: const TextStyle(color: Colors.black),
          floatingLabelStyle: const TextStyle(color: Colors.black),
          suffixIcon: (value.isNotEmpty)
              ? IconButton(
                  onPressed: () => ref.read(wantsFilterProvider.notifier).state = '',
                  icon: const Icon(Icons.clear),
                )
              : null,
        ),
        onChanged: (newValue) => ref.read(wantsFilterProvider.notifier).state = newValue,
        enableSuggestions: false,
      ),
    );
  }
}
