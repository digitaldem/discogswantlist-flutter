import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'configuration.freezed.dart';
part 'configuration.g.dart';

@freezed
class Configuration with _$Configuration {
  const factory Configuration({
    required String? discogsUrl,
    required String? discogsToken,
    required String? discogsUsername,
  }) = _Configuration;

  factory Configuration.fromJson(Map<String, Object?> json) => _$ConfigurationFromJson(json);
}
