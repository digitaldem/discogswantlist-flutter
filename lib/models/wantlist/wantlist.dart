import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../want/want.dart';
import '../pagination/pagination.dart';

part 'wantlist.freezed.dart';
part 'wantlist.g.dart';

@freezed
class WantList with _$WantList {
  factory WantList({
    required Pagination pagination,
    required List<Want> wants,
  }) = _WantList;

  factory WantList.fromJson(Map<String, dynamic> json) => _$WantListFromJson(json);
}
