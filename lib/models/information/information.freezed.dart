// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Information _$InformationFromJson(Map<String, dynamic> json) {
  return _Information.fromJson(json);
}

/// @nodoc
mixin _$Information {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "resource_url")
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  List<Artist> get artists => throw _privateConstructorUsedError;
  String get thumb => throw _privateConstructorUsedError;
  @JsonKey(name: "cover_image")
  String get image => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  List<String> get styles => throw _privateConstructorUsedError;

  /// Serializes this Information to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Information
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InformationCopyWith<Information> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InformationCopyWith<$Res> {
  factory $InformationCopyWith(
          Information value, $Res Function(Information) then) =
      _$InformationCopyWithImpl<$Res, Information>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "resource_url") String url,
      String title,
      int year,
      List<Artist> artists,
      String thumb,
      @JsonKey(name: "cover_image") String image,
      List<String> genres,
      List<String> styles});
}

/// @nodoc
class _$InformationCopyWithImpl<$Res, $Val extends Information>
    implements $InformationCopyWith<$Res> {
  _$InformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Information
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? title = null,
    Object? year = null,
    Object? artists = null,
    Object? thumb = null,
    Object? image = null,
    Object? genres = null,
    Object? styles = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      styles: null == styles
          ? _value.styles
          : styles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InformationImplCopyWith<$Res>
    implements $InformationCopyWith<$Res> {
  factory _$$InformationImplCopyWith(
          _$InformationImpl value, $Res Function(_$InformationImpl) then) =
      __$$InformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "resource_url") String url,
      String title,
      int year,
      List<Artist> artists,
      String thumb,
      @JsonKey(name: "cover_image") String image,
      List<String> genres,
      List<String> styles});
}

/// @nodoc
class __$$InformationImplCopyWithImpl<$Res>
    extends _$InformationCopyWithImpl<$Res, _$InformationImpl>
    implements _$$InformationImplCopyWith<$Res> {
  __$$InformationImplCopyWithImpl(
      _$InformationImpl _value, $Res Function(_$InformationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Information
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? title = null,
    Object? year = null,
    Object? artists = null,
    Object? thumb = null,
    Object? image = null,
    Object? genres = null,
    Object? styles = null,
  }) {
    return _then(_$InformationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      styles: null == styles
          ? _value._styles
          : styles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InformationImpl extends _Information with DiagnosticableTreeMixin {
  const _$InformationImpl(
      {required this.id,
      @JsonKey(name: "resource_url") required this.url,
      required this.title,
      required this.year,
      required final List<Artist> artists,
      required this.thumb,
      @JsonKey(name: "cover_image") required this.image,
      required final List<String> genres,
      required final List<String> styles})
      : _artists = artists,
        _genres = genres,
        _styles = styles,
        super._();

  factory _$InformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$InformationImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "resource_url")
  final String url;
  @override
  final String title;
  @override
  final int year;
  final List<Artist> _artists;
  @override
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  final String thumb;
  @override
  @JsonKey(name: "cover_image")
  final String image;
  final List<String> _genres;
  @override
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  final List<String> _styles;
  @override
  List<String> get styles {
    if (_styles is EqualUnmodifiableListView) return _styles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_styles);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Information(id: $id, url: $url, title: $title, year: $year, artists: $artists, thumb: $thumb, image: $image, genres: $genres, styles: $styles)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Information'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('year', year))
      ..add(DiagnosticsProperty('artists', artists))
      ..add(DiagnosticsProperty('thumb', thumb))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('genres', genres))
      ..add(DiagnosticsProperty('styles', styles));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InformationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other._styles, _styles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      url,
      title,
      year,
      const DeepCollectionEquality().hash(_artists),
      thumb,
      image,
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(_styles));

  /// Create a copy of Information
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InformationImplCopyWith<_$InformationImpl> get copyWith =>
      __$$InformationImplCopyWithImpl<_$InformationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InformationImplToJson(
      this,
    );
  }
}

abstract class _Information extends Information {
  const factory _Information(
      {required final int id,
      @JsonKey(name: "resource_url") required final String url,
      required final String title,
      required final int year,
      required final List<Artist> artists,
      required final String thumb,
      @JsonKey(name: "cover_image") required final String image,
      required final List<String> genres,
      required final List<String> styles}) = _$InformationImpl;
  const _Information._() : super._();

  factory _Information.fromJson(Map<String, dynamic> json) =
      _$InformationImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "resource_url")
  String get url;
  @override
  String get title;
  @override
  int get year;
  @override
  List<Artist> get artists;
  @override
  String get thumb;
  @override
  @JsonKey(name: "cover_image")
  String get image;
  @override
  List<String> get genres;
  @override
  List<String> get styles;

  /// Create a copy of Information
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InformationImplCopyWith<_$InformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
