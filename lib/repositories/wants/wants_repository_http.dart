import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../http/http_client.dart';
import '../../models/configuration/configuration.dart';
import '../../models/want/want.dart';
import '../../models/wantlist/wantlist.dart';
import '../../services/configuration/configuration_service.dart';
import './wants_repository.dart';

// This provider has dependencies on Configuration and HTTPClient
final wantsRepositoryProvider = Provider<WantsRepository>(
    (ref) => WantsRepositoryHttp(ref.watch(configurationServiceProvider.future), ref.watch(httpClientProvider)),
    name: 'WantsRepository');

// Defines an HTTP-backed repository for the Want models
class WantsRepositoryHttp implements WantsRepository {
  // Ctor
  final Future<Configuration> configuration;
  final HttpClient client;
  WantsRepositoryHttp(this.configuration, this.client);

  // Backing values for API ressult and download progress tracking
  final List<Want> wants = <Want>[];
  double _progress = 0.0;

  // Expose download progress
  @override
  double get progress => _progress;

  // Get the Want models for this from Local Cache or Remote API
  @override
  Future<Either<Exception, List<Want>>> getWants() async {
    // Check if API result has been cached locally and return immediately
    if (wants.isNotEmpty) {
      return Right(wants);
    }

    try {
      // Invoke the API and return the resulting Model or Exception
      int totalPages = 1;
      int currentPage = 1;
      do {
        // Loop through pages (100 wants at a time)
        final WantList result = await client.getWantList((await configuration).discogsUsername!, 100, currentPage);
        // Update download progress percentage after this page vs total number of pages
        totalPages = result.pagination.pages;
        _progress = (totalPages == 1) ? 100.0 : currentPage / totalPages;
        // Collect the Wants
        wants.addAll(result.wants);
        // Increment the page counter
        currentPage++;
      } while (currentPage <= totalPages);
      // Once all pages are downloaded, sort the Want list
      wants.sort();
      return Right(wants);
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  void clearWants() {
    // Clear the local cache in order to perform a refresh
    wants.clear();
    _progress = 0.0;
  }
}
