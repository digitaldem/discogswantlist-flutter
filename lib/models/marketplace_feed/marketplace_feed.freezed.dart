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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarketplaceFeed _$MarketplaceFeedFromJson(Map<String, dynamic> json) {
  return _MarketplaceFeed.fromJson(json);
}

/// @nodoc
mixin _$MarketplaceFeed {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get updated => throw _privateConstructorUsedError;
  List<MarketplaceEntry> get entry => throw _privateConstructorUsedError;

  /// Serializes this MarketplaceFeed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketplaceFeed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of MarketplaceFeed
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$MarketplaceFeedImplCopyWith<$Res>
    implements $MarketplaceFeedCopyWith<$Res> {
  factory _$$MarketplaceFeedImplCopyWith(_$MarketplaceFeedImpl value,
          $Res Function(_$MarketplaceFeedImpl) then) =
      __$$MarketplaceFeedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String title, String updated, List<MarketplaceEntry> entry});
}

/// @nodoc
class __$$MarketplaceFeedImplCopyWithImpl<$Res>
    extends _$MarketplaceFeedCopyWithImpl<$Res, _$MarketplaceFeedImpl>
    implements _$$MarketplaceFeedImplCopyWith<$Res> {
  __$$MarketplaceFeedImplCopyWithImpl(
      _$MarketplaceFeedImpl _value, $Res Function(_$MarketplaceFeedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketplaceFeed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? updated = null,
    Object? entry = null,
  }) {
    return _then(_$MarketplaceFeedImpl(
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
class _$MarketplaceFeedImpl implements _MarketplaceFeed {
  _$MarketplaceFeedImpl(
      {required this.id,
      required this.title,
      required this.updated,
      required final List<MarketplaceEntry> entry})
      : _entry = entry;

  factory _$MarketplaceFeedImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketplaceFeedImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketplaceFeedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            const DeepCollectionEquality().equals(other._entry, _entry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, updated,
      const DeepCollectionEquality().hash(_entry));

  /// Create a copy of MarketplaceFeed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketplaceFeedImplCopyWith<_$MarketplaceFeedImpl> get copyWith =>
      __$$MarketplaceFeedImplCopyWithImpl<_$MarketplaceFeedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketplaceFeedImplToJson(
      this,
    );
  }
}

abstract class _MarketplaceFeed implements MarketplaceFeed {
  factory _MarketplaceFeed(
      {required final String id,
      required final String title,
      required final String updated,
      required final List<MarketplaceEntry> entry}) = _$MarketplaceFeedImpl;

  factory _MarketplaceFeed.fromJson(Map<String, dynamic> json) =
      _$MarketplaceFeedImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get updated;
  @override
  List<MarketplaceEntry> get entry;

  /// Create a copy of MarketplaceFeed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketplaceFeedImplCopyWith<_$MarketplaceFeedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
