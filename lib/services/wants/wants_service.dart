import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../extensions/either.dart';
import '../../models/want/want.dart';
import '../../repositories/wants/wants_repository.dart';
import '../../repositories/wants/wants_repository_http.dart';

// Simple state provider to apply filtering logic
final wantsFilterProvider = StateProvider((ref) => '', name: 'WantsFilter');

// This provider has a dependency on WantsRepository and the above Filter State
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
    final wants = await repository.getWants(invalidateCache);
    // Check if repository returns models
    if (wants.isRight()) {
      // Apply artist name filter from Filter state and only return the matches
      final matches = wants.getRightOrThrow().where((e) => e.information.artist.toLowerCase().contains(filter.toLowerCase())).toList();
      return Right(matches);
    }
    // Return Left (Exception)
    return wants;
  }
}
