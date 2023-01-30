import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../models/marketplace_feed/marketplace_feed.dart';
import '../models/wantlist/wantlist.dart';
import './dio.dart';

// Include auto-generated code
part 'http_client.g.dart';

// This provider has a dependency on Dio
final httpClientProvider = Provider<HttpClient>((ref) => HttpClient(ref.watch(dioProvider)), name: 'HttpClient');

@RestApi()
abstract class HttpClient {
  // Require Dio on ctor
  factory HttpClient(Dio dio) = _HttpClient;

  // Define want list API endpoint
  @GET('/users/{user}/wants')
  Future<WantList> getWantList(@Path('user') String user, @Query("per_page") int perPage, @Query("page") int page);

  // Define maketplace RSS endpoint
  @GET('/sell/mplistrss')
  Future<MarketplaceFeed> getMarketplaceFeed(@Query("release_id") int id);
}
