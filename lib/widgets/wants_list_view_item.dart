import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_navigator/riverpod_navigator.dart';

import '../screens/home_screen.dart';
import '../screens/want_screen.dart';
import './marketplace_summary.dart';
import './want_tile.dart';

class WantsListViewItem extends ConsumerWidget {
  // Ctor
  final int index;
  final int id;
  final String artist;
  final String title;
  final String imageUrl;
  const WantsListViewItem({Key? key, required this.index, required this.id, required this.artist, required this.title, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
        onTap: () => ref.watch(navigatorProvider).navigate([const HomeSegment(), WantSegment(id: id)]),
        child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
            padding: const EdgeInsets.all(8.0),
            child: FractionallySizedBox(
              widthFactor: 0.95,
              child: Column(
                children: [
                  SizedBox(
                      width: double.infinity,
                      child: Text(
                        index.toString(),
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.left,
                      )),
                  WantTile(id: id, artist: artist, title: title, imageUrl: imageUrl),
                  MarketplaceSummary(id: id),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            )));
  }
}
