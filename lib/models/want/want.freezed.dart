// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'want.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Want _$WantFromJson(Map<String, dynamic> json) {
  return _Want.fromJson(json);
}

/// @nodoc
mixin _$Want {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "resource_url")
  String get url => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "date_added")
  String get dateAdded => throw _privateConstructorUsedError;
  @JsonKey(name: "basic_information")
  Information get information => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WantCopyWith<Want> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WantCopyWith<$Res> {
  factory $WantCopyWith(Want value, $Res Function(Want) then) =
      _$WantCopyWithImpl<$Res, Want>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "resource_url") String url,
      int rating,
      @JsonKey(name: "date_added") String dateAdded,
      @JsonKey(name: "basic_information") Information information,
      String notes});

  $InformationCopyWith<$Res> get information;
}

/// @nodoc
class _$WantCopyWithImpl<$Res, $Val extends Want>
    implements $WantCopyWith<$Res> {
  _$WantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? rating = null,
    Object? dateAdded = null,
    Object? information = null,
    Object? notes = null,
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
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as String,
      information: null == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as Information,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InformationCopyWith<$Res> get information {
    return $InformationCopyWith<$Res>(_value.information, (value) {
      return _then(_value.copyWith(information: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WantCopyWith<$Res> implements $WantCopyWith<$Res> {
  factory _$$_WantCopyWith(_$_Want value, $Res Function(_$_Want) then) =
      __$$_WantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "resource_url") String url,
      int rating,
      @JsonKey(name: "date_added") String dateAdded,
      @JsonKey(name: "basic_information") Information information,
      String notes});

  @override
  $InformationCopyWith<$Res> get information;
}

/// @nodoc
class __$$_WantCopyWithImpl<$Res> extends _$WantCopyWithImpl<$Res, _$_Want>
    implements _$$_WantCopyWith<$Res> {
  __$$_WantCopyWithImpl(_$_Want _value, $Res Function(_$_Want) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? rating = null,
    Object? dateAdded = null,
    Object? information = null,
    Object? notes = null,
  }) {
    return _then(_$_Want(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as String,
      information: null == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as Information,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Want extends _Want with DiagnosticableTreeMixin {
  const _$_Want(
      {required this.id,
      @JsonKey(name: "resource_url") required this.url,
      required this.rating,
      @JsonKey(name: "date_added") required this.dateAdded,
      @JsonKey(name: "basic_information") required this.information,
      required this.notes})
      : super._();

  factory _$_Want.fromJson(Map<String, dynamic> json) => _$$_WantFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "resource_url")
  final String url;
  @override
  final int rating;
  @override
  @JsonKey(name: "date_added")
  final String dateAdded;
  @override
  @JsonKey(name: "basic_information")
  final Information information;
  @override
  final String notes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Want(id: $id, url: $url, rating: $rating, dateAdded: $dateAdded, information: $information, notes: $notes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Want'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('dateAdded', dateAdded))
      ..add(DiagnosticsProperty('information', information))
      ..add(DiagnosticsProperty('notes', notes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Want &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.information, information) ||
                other.information == information) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, url, rating, dateAdded, information, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WantCopyWith<_$_Want> get copyWith =>
      __$$_WantCopyWithImpl<_$_Want>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WantToJson(
      this,
    );
  }
}

abstract class _Want extends Want {
  const factory _Want(
      {required final int id,
      @JsonKey(name: "resource_url")
          required final String url,
      required final int rating,
      @JsonKey(name: "date_added")
          required final String dateAdded,
      @JsonKey(name: "basic_information")
          required final Information information,
      required final String notes}) = _$_Want;
  const _Want._() : super._();

  factory _Want.fromJson(Map<String, dynamic> json) = _$_Want.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "resource_url")
  String get url;
  @override
  int get rating;
  @override
  @JsonKey(name: "date_added")
  String get dateAdded;
  @override
  @JsonKey(name: "basic_information")
  Information get information;
  @override
  String get notes;
  @override
  @JsonKey(ignore: true)
  _$$_WantCopyWith<_$_Want> get copyWith => throw _privateConstructorUsedError;
}
