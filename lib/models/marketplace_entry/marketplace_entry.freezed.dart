// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarketplaceEntry _$MarketplaceEntryFromJson(Map<String, dynamic> json) {
  return _MarketplaceEntry.fromJson(json);
}

/// @nodoc
mixin _$MarketplaceEntry {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get updated => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketplaceEntryCopyWith<MarketplaceEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketplaceEntryCopyWith<$Res> {
  factory $MarketplaceEntryCopyWith(
          MarketplaceEntry value, $Res Function(MarketplaceEntry) then) =
      _$MarketplaceEntryCopyWithImpl<$Res, MarketplaceEntry>;
  @useResult
  $Res call({String id, String title, String updated, String summary});
}

/// @nodoc
class _$MarketplaceEntryCopyWithImpl<$Res, $Val extends MarketplaceEntry>
    implements $MarketplaceEntryCopyWith<$Res> {
  _$MarketplaceEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? updated = null,
    Object? summary = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MarketplaceEntryCopyWith<$Res>
    implements $MarketplaceEntryCopyWith<$Res> {
  factory _$$_MarketplaceEntryCopyWith(
          _$_MarketplaceEntry value, $Res Function(_$_MarketplaceEntry) then) =
      __$$_MarketplaceEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String updated, String summary});
}

/// @nodoc
class __$$_MarketplaceEntryCopyWithImpl<$Res>
    extends _$MarketplaceEntryCopyWithImpl<$Res, _$_MarketplaceEntry>
    implements _$$_MarketplaceEntryCopyWith<$Res> {
  __$$_MarketplaceEntryCopyWithImpl(
      _$_MarketplaceEntry _value, $Res Function(_$_MarketplaceEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? updated = null,
    Object? summary = null,
  }) {
    return _then(_$_MarketplaceEntry(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarketplaceEntry extends _MarketplaceEntry {
  _$_MarketplaceEntry(
      {required this.id,
      required this.title,
      required this.updated,
      required this.summary})
      : super._();

  factory _$_MarketplaceEntry.fromJson(Map<String, dynamic> json) =>
      _$$_MarketplaceEntryFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String updated;
  @override
  final String summary;

  @override
  String toString() {
    return 'MarketplaceEntry(id: $id, title: $title, updated: $updated, summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketplaceEntry &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, updated, summary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarketplaceEntryCopyWith<_$_MarketplaceEntry> get copyWith =>
      __$$_MarketplaceEntryCopyWithImpl<_$_MarketplaceEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarketplaceEntryToJson(
      this,
    );
  }
}

abstract class _MarketplaceEntry extends MarketplaceEntry {
  factory _MarketplaceEntry(
      {required final String id,
      required final String title,
      required final String updated,
      required final String summary}) = _$_MarketplaceEntry;
  _MarketplaceEntry._() : super._();

  factory _MarketplaceEntry.fromJson(Map<String, dynamic> json) =
      _$_MarketplaceEntry.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get updated;
  @override
  String get summary;
  @override
  @JsonKey(ignore: true)
  _$$_MarketplaceEntryCopyWith<_$_MarketplaceEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
