import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../extensions/either.dart';
import '../../models/want/want.dart';
import '../../repositories/wants/wants_repository.dart';
import '../../repositories/wants/wants_repository_http.dart';
import '../../states/wants/wants_state_notifier.dart';

// This provider has a dependency on WantsRepository and the FilterState
final wantsServiceProvider =
    StateProvider<WantsService>((ref) => WantsService(ref.watch(wantsRepositoryProvider), ref.watch(wantsFilterProvider)), name: 'WantsService');

// Defines a Repository-backed service for the Want models
class WantsService {
  // Ctor
  final WantsRepository repository;
  final String filter;
  WantsService(this.repository, this.filter);

  // Expose download progress
  double get progress => repository.progress;

  // Call into the repository to get Want models and apply filtering logic
  Future<Either<Exception, List<Want>>> getWants(bool invalidateCache) async {
    // If forcing a refresh, clear the local cache
    if (invalidateCache) {
      repository.clearWants();
    }

    // Call and await for repository to get Want models
    final wants = await repository.getWants();

    // Check if repository returned models
    if (wants.isRight()) {
      // Apply artist name filter from Filter state and only return the matches
      final List<Want> matches = wants.getRightOrThrow().where((e) => e.information.artist.toLowerCase().contains(filter.toLowerCase())).toList();
      return Right(matches);
    }
    // Return Left (Exception)
    return wants;
  }
}
