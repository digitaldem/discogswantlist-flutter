import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_navigator/riverpod_navigator.dart';

import '../models/want/want.dart';
import '../screens/home_screen.dart';
import '../screens/want_screen.dart';
import '../states/favorites/favorites_notifier.dart';
import './marketplace_summary.dart';
import './want_tile.dart';

class WantsListViewItem extends ConsumerWidget {
  // Ctor
  final int index;
  final Want want;
  const WantsListViewItem({Key? key, required this.index, required this.want}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(favoritesNotifierProvider);

    return GestureDetector(
        onTap: () => ref.watch(navigatorProvider).navigate([const HomeSegment(), WantSegment(id: want.id)]),
        child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
            padding: const EdgeInsets.all(8.0),
            child: FractionallySizedBox(
              widthFactor: 0.95,
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Text(
                      index.toString(),
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.left,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {
                          ref.read(favoritesNotifierProvider.notifier).toggle(want.id);
                        },
                        icon: Icon((favorites.contains(want.id)) ? Icons.star : Icons.star_border),
                      ),
                    ),
                  ]),
                  WantTile(id: want.id, artist: want.information.artist, title: want.information.title, imageUrl: want.information.image),
                  MarketplaceSummary(id: want.id),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            )));
  }
}
