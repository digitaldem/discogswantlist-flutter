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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarketplaceEntry _$MarketplaceEntryFromJson(Map<String, dynamic> json) {
  return _MarketplaceEntry.fromJson(json);
}

/// @nodoc
mixin _$MarketplaceEntry {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get updated => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;

  /// Serializes this MarketplaceEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketplaceEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of MarketplaceEntry
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$MarketplaceEntryImplCopyWith<$Res>
    implements $MarketplaceEntryCopyWith<$Res> {
  factory _$$MarketplaceEntryImplCopyWith(_$MarketplaceEntryImpl value,
          $Res Function(_$MarketplaceEntryImpl) then) =
      __$$MarketplaceEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String updated, String summary});
}

/// @nodoc
class __$$MarketplaceEntryImplCopyWithImpl<$Res>
    extends _$MarketplaceEntryCopyWithImpl<$Res, _$MarketplaceEntryImpl>
    implements _$$MarketplaceEntryImplCopyWith<$Res> {
  __$$MarketplaceEntryImplCopyWithImpl(_$MarketplaceEntryImpl _value,
      $Res Function(_$MarketplaceEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketplaceEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? updated = null,
    Object? summary = null,
  }) {
    return _then(_$MarketplaceEntryImpl(
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
class _$MarketplaceEntryImpl extends _MarketplaceEntry {
  _$MarketplaceEntryImpl(
      {required this.id,
      required this.title,
      required this.updated,
      required this.summary})
      : super._();

  factory _$MarketplaceEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketplaceEntryImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketplaceEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, updated, summary);

  /// Create a copy of MarketplaceEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketplaceEntryImplCopyWith<_$MarketplaceEntryImpl> get copyWith =>
      __$$MarketplaceEntryImplCopyWithImpl<_$MarketplaceEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketplaceEntryImplToJson(
      this,
    );
  }
}

abstract class _MarketplaceEntry extends MarketplaceEntry {
  factory _MarketplaceEntry(
      {required final String id,
      required final String title,
      required final String updated,
      required final String summary}) = _$MarketplaceEntryImpl;
  _MarketplaceEntry._() : super._();

  factory _MarketplaceEntry.fromJson(Map<String, dynamic> json) =
      _$MarketplaceEntryImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get updated;
  @override
  String get summary;

  /// Create a copy of MarketplaceEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketplaceEntryImplCopyWith<_$MarketplaceEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
