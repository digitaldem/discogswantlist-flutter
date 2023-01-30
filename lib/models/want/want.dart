import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../information/information.dart';

part 'want.freezed.dart';
part 'want.g.dart';

@freezed
class Want with _$Want implements Comparable<Want> {
  const Want._();
  const factory Want({
    required int id,
    @JsonKey(name: "resource_url") required String url,
    required int rating,
    @JsonKey(name: "date_added") required String dateAdded,
    @JsonKey(name: "basic_information") required Information information,
    required String notes,
  }) = _Want;

  factory Want.fromJson(Map<String, Object?> json) => _$WantFromJson(json);

  // Make this model sortable (by artist + title)
  @override
  int compareTo(Want that) {
    final String thisString =
        '${(information.artist.toLowerCase().startsWith('the ')) ? information.artist.toLowerCase().substring(4) : information.artist.toLowerCase()} - ${information.title.toLowerCase()}';
    final String thatString =
        '${(that.information.artist.toLowerCase().startsWith('the ')) ? that.information.artist.toLowerCase().substring(4) : that.information.artist.toLowerCase()} - ${that.information.title.toLowerCase()}';
    return thisString.compareTo(thatString);
  }
}
