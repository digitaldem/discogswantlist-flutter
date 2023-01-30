import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ErrorInfo extends ConsumerWidget {
  // Ctor
  final Exception error;
  const ErrorInfo({Key? key, required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Text(
            'An error occured',
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(error.toString()),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
