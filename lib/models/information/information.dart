import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../artist/artist.dart';

part 'information.freezed.dart';
part 'information.g.dart';

@freezed
class Information with _$Information {
  const Information._();
  const factory Information({
    required int id,
    @JsonKey(name: "resource_url") required String url,
    required String title,
    required int year,
    required List<Artist> artists,
    required String thumb,
    @JsonKey(name: "cover_image") required String image,
    required List<String> genres,
    required List<String> styles,
  }) = _Information;

  // Concat artists list into a new line delimited string
  String get artist => artists.map((a) => a.name).join('\n');

  factory Information.fromJson(Map<String, Object?> json) => _$InformationFromJson(json);
}
