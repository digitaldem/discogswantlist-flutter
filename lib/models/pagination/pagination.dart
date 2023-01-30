import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    required int page,
    required int pages,
    required int items,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, Object?> json) => _$PaginationFromJson(json);
}
