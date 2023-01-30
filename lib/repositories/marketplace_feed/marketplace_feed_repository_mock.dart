import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/marketplace_feed/marketplace_feed.dart';
import './marketplace_feed_repository.dart';

final marketplaceFeedRepositoryProvider = Provider<MarketplaceFeedRepository>((ref) => MarketplaceFeedRepositoryMock());

class MarketplaceFeedRepositoryMock implements MarketplaceFeedRepository {
  @override
  Future<Either<Exception, MarketplaceFeed>> getMarketplaceFeed() async {
    try {
      final MarketplaceFeed feed = MarketplaceFeed(id: '1', title: 'one', updated: '', entry: []);
      return Right(feed);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
