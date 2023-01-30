import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_entry.freezed.dart';
part 'marketplace_entry.g.dart';

@freezed
class MarketplaceEntry with _$MarketplaceEntry implements Comparable<MarketplaceEntry> {
  const MarketplaceEntry._();
  factory MarketplaceEntry({
    required String id,
    required String title,
    required String updated,
    required String summary,
  }) = _MarketplaceEntry;

  String get price => summary.split('-').elementAt(0);
  String get notes => summary.split('-').getRange(1, summary.split('-').length).join('-').trim();

  factory MarketplaceEntry.fromJson(Map<String, dynamic> json) => _$MarketplaceEntryFromJson(json);

  // Make this model sortable (by currency + price)
  @override
  int compareTo(MarketplaceEntry that) {
    final String thisString = summary.split('-').elementAt(0);
    final String thatString = that.summary.split('-').elementAt(0);
    return thisString.compareTo(thatString);
  }
}
