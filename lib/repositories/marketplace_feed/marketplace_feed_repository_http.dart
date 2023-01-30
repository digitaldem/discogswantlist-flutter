import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../http/http_client.dart';
import '../../models/marketplace_feed/marketplace_feed.dart';
import './marketplace_feed_repository.dart';

// This provider is declared as Family since it requires a ReleaseID
// This provider has a dependency on HTTPClient
final marketplaceFeedRepositoryProvider = Provider.family<MarketplaceFeedRepository, int>(
    (ref, id) => MarketplaceFeedRepositoryHttp(ref.watch(httpClientProvider), id),
    name: 'MarketplaceFeedRepository');

// Defines an HTTP-backed repository for the MarketPlaceFeed model
class MarketplaceFeedRepositoryHttp implements MarketplaceFeedRepository {
  // Ctor
  final HttpClient client;
  final int id;
  MarketplaceFeedRepositoryHttp(this.client, this.id);

  // Backing value for API ressult
  MarketplaceFeed? result;

  // Get the MarketplaceFeed model for this ReleaseID from Local Cache or Remote API
  @override
  Future<Either<Exception, MarketplaceFeed>> getMarketplaceFeed() async {
    // Check if API result has been cached locally and return immediately
    if (result != null) {
      return Right(result!);
    }

    try {
      // Invoke the API and return the resulting Model or Exception
      result = await client.getMarketplaceFeed(id);
      return Right(result!);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
