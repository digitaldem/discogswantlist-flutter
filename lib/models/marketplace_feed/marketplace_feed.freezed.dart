// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarketplaceFeed _$MarketplaceFeedFromJson(Map<String, dynamic> json) {
  return _MarketplaceFeed.fromJson(json);
}

/// @nodoc
mixin _$MarketplaceFeed {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get updated => throw _privateConstructorUsedError;
  List<MarketplaceEntry> get entry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketplaceFeedCopyWith<MarketplaceFeed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketplaceFeedCopyWith<$Res> {
  factory $MarketplaceFeedCopyWith(
          MarketplaceFeed value, $Res Function(MarketplaceFeed) then) =
      _$MarketplaceFeedCopyWithImpl<$Res, MarketplaceFeed>;
  @useResult
  $Res call(
      {String id, String title, String updated, List<MarketplaceEntry> entry});
}

/// @nodoc
class _$MarketplaceFeedCopyWithImpl<$Res, $Val extends MarketplaceFeed>
    implements $MarketplaceFeedCopyWith<$Res> {
  _$MarketplaceFeedCopyWithImpl(this._value, this._then);

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
    Object? entry = null,
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
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<MarketplaceEntry>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MarketplaceFeedCopyWith<$Res>
    implements $MarketplaceFeedCopyWith<$Res> {
  factory _$$_MarketplaceFeedCopyWith(
          _$_MarketplaceFeed value, $Res Function(_$_MarketplaceFeed) then) =
      __$$_MarketplaceFeedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String title, String updated, List<MarketplaceEntry> entry});
}

/// @nodoc
class __$$_MarketplaceFeedCopyWithImpl<$Res>
    extends _$MarketplaceFeedCopyWithImpl<$Res, _$_MarketplaceFeed>
    implements _$$_MarketplaceFeedCopyWith<$Res> {
  __$$_MarketplaceFeedCopyWithImpl(
      _$_MarketplaceFeed _value, $Res Function(_$_MarketplaceFeed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? updated = null,
    Object? entry = null,
  }) {
    return _then(_$_MarketplaceFeed(
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
      entry: null == entry
          ? _value._entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<MarketplaceEntry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarketplaceFeed implements _MarketplaceFeed {
  _$_MarketplaceFeed(
      {required this.id,
      required this.title,
      required this.updated,
      required final List<MarketplaceEntry> entry})
      : _entry = entry;

  factory _$_MarketplaceFeed.fromJson(Map<String, dynamic> json) =>
      _$$_MarketplaceFeedFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String updated;
  final List<MarketplaceEntry> _entry;
  @override
  List<MarketplaceEntry> get entry {
    if (_entry is EqualUnmodifiableListView) return _entry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entry);
  }

  @override
  String toString() {
    return 'MarketplaceFeed(id: $id, title: $title, updated: $updated, entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketplaceFeed &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            const DeepCollectionEquality().equals(other._entry, _entry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, updated,
      const DeepCollectionEquality().hash(_entry));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarketplaceFeedCopyWith<_$_MarketplaceFeed> get copyWith =>
      __$$_MarketplaceFeedCopyWithImpl<_$_MarketplaceFeed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarketplaceFeedToJson(
      this,
    );
  }
}

abstract class _MarketplaceFeed implements MarketplaceFeed {
  factory _MarketplaceFeed(
      {required final String id,
      required final String title,
      required final String updated,
      required final List<MarketplaceEntry> entry}) = _$_MarketplaceFeed;

  factory _MarketplaceFeed.fromJson(Map<String, dynamic> json) =
      _$_MarketplaceFeed.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get updated;
  @override
  List<MarketplaceEntry> get entry;
  @override
  @JsonKey(ignore: true)
  _$$_MarketplaceFeedCopyWith<_$_MarketplaceFeed> get copyWith =>
      throw _privateConstructorUsedError;
}
