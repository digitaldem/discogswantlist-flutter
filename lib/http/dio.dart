import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../extensions/map.dart';
import '../extensions/string.dart';
import '../models/configuration/configuration.dart';
import '../services/configuration/configuration_service.dart';

// This provider has no dependencies
final dioProvider = Provider<Dio>((ref) {
  // Instantiate a Dio instance
  Dio dio = Dio();

  // Add a Request interceptor to handle RSS endpoints
  dio.interceptors.add(QueuedInterceptorsWrapper(onRequest: (options, handler) {
    // Read config provider
    final Configuration configuration = ref.watch(configurationServiceProvider).whenData((value) => value).requireValue;
    // If fetching an RSS endpoint, munge the "api." URL to a "www." URL
    options.baseUrl = (options.path.endsWith('rss')) ? configuration.discogsUrl!.replaceFirst('api.', 'www.') : configuration.discogsUrl!;
    // Print debug message
    log('HTTP Request -> ${options.method} ${options.baseUrl}${options.path}${options.queryParameters.toQueryString()}');
    // Define and add Discogs authorization header
    Map<String, String> customHeaders = {
      'Authorization': 'Discogs token=${configuration.discogsToken!}',
      'User-Agent': '${configuration.discogsUsername!}/0.1 (iPhone;)',
    };
    options.headers.addAll(customHeaders);
    // Move along to the next interceptor
    return handler.next(options);
  }));

  // Add a Response interceptor to handle RSS endpoints
  dio.interceptors.add(QueuedInterceptorsWrapper(onResponse: (response, handler) {
    // If payload is RSS XML, convert to JSON
    if (response.headers.value('content-type') == 'application/atom+xml') {
      response.data = response.data.toString().fromXmlToJson();
      // Special array handling
      if (response.data['entry'] is! List) {
        response.data['entry'] = (response.data['entry'] != null) ? [response.data['entry']] : [];
      }
    }
    // Move along to the next interceptor
    return handler.next(response);
  }));

  // Return Dio instance with interceptors defined
  return dio;
}, name: 'Dio');
