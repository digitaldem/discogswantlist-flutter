import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/marketplace_feed/marketplace_feed.dart';
import '../../repositories/marketplace_feed/marketplace_feed_repository.dart';
import '../../repositories/marketplace_feed/marketplace_feed_repository_http.dart';

// This provider is declared as Family since it requires a ReleaseID
// This provider has a dependency on MarketplaceFeedRepository
final marketplaceFeedServiceProvider = Provider.family<MarketplaceFeedService, int>((ref, id) {
  // Bubble the Dispose event to invalidate the repository for this ReleaseID as well
  ref.onDispose(() => ref.invalidate(marketplaceFeedRepositoryProvider(id)));
  return MarketplaceFeedService(ref.watch(marketplaceFeedRepositoryProvider(id)), id);
}, name: 'MarketplaceFeedService');

// Defines a Repository-backed service for the MarketPlaceFeed model
class MarketplaceFeedService {
  // Ctor
  final MarketplaceFeedRepository repository;
  final int id;
  MarketplaceFeedService(this.repository, this.id);

  // Call into the repository to get MarketplaceFeed model for this ReleaseID
  Future<Either<Exception, MarketplaceFeed>> getMarketplaceFeed() async {
    return await repository.getMarketplaceFeed();
  }
}
