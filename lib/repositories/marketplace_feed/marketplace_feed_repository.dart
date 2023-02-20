import 'package:dartz/dartz.dart';

import '../../models/marketplace_feed/marketplace_feed.dart';

// Define interface for this repository
abstract class MarketplaceFeedRepository {
  Future<Either<Exception, MarketplaceFeed>> getMarketplaceFeed();
}
