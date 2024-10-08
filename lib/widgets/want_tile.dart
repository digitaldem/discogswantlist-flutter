import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './album_art.dart';

class WantTile extends ConsumerWidget {
  // Ctor
  final int id;
  final String artist;
  final String title;
  final String imageUrl;
  const WantTile({super.key, required this.id, required this.artist, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Text(
          artist,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 8,
        ),
        (imageUrl != '') ? AlbumArt(imageUrl: imageUrl, width: 240, height: 240) : const SizedBox(width: 240, height: 240),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
