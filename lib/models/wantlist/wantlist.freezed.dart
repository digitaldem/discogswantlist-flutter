// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wantlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WantList _$WantListFromJson(Map<String, dynamic> json) {
  return _WantList.fromJson(json);
}

/// @nodoc
mixin _$WantList {
  Pagination get pagination => throw _privateConstructorUsedError;
  List<Want> get wants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WantListCopyWith<WantList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WantListCopyWith<$Res> {
  factory $WantListCopyWith(WantList value, $Res Function(WantList) then) =
      _$WantListCopyWithImpl<$Res, WantList>;
  @useResult
  $Res call({Pagination pagination, List<Want> wants});

  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$WantListCopyWithImpl<$Res, $Val extends WantList>
    implements $WantListCopyWith<$Res> {
  _$WantListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? wants = null,
  }) {
    return _then(_value.copyWith(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
      wants: null == wants
          ? _value.wants
          : wants // ignore: cast_nullable_to_non_nullable
              as List<Want>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WantListCopyWith<$Res> implements $WantListCopyWith<$Res> {
  factory _$$_WantListCopyWith(
          _$_WantList value, $Res Function(_$_WantList) then) =
      __$$_WantListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Pagination pagination, List<Want> wants});

  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$_WantListCopyWithImpl<$Res>
    extends _$WantListCopyWithImpl<$Res, _$_WantList>
    implements _$$_WantListCopyWith<$Res> {
  __$$_WantListCopyWithImpl(
      _$_WantList _value, $Res Function(_$_WantList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? wants = null,
  }) {
    return _then(_$_WantList(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
      wants: null == wants
          ? _value._wants
          : wants // ignore: cast_nullable_to_non_nullable
              as List<Want>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WantList with DiagnosticableTreeMixin implements _WantList {
  _$_WantList({required this.pagination, required final List<Want> wants})
      : _wants = wants;

  factory _$_WantList.fromJson(Map<String, dynamic> json) =>
      _$$_WantListFromJson(json);

  @override
  final Pagination pagination;
  final List<Want> _wants;
  @override
  List<Want> get wants {
    if (_wants is EqualUnmodifiableListView) return _wants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wants);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WantList(pagination: $pagination, wants: $wants)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WantList'))
      ..add(DiagnosticsProperty('pagination', pagination))
      ..add(DiagnosticsProperty('wants', wants));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WantList &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other._wants, _wants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, pagination, const DeepCollectionEquality().hash(_wants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WantListCopyWith<_$_WantList> get copyWith =>
      __$$_WantListCopyWithImpl<_$_WantList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WantListToJson(
      this,
    );
  }
}

abstract class _WantList implements WantList {
  factory _WantList(
      {required final Pagination pagination,
      required final List<Want> wants}) = _$_WantList;

  factory _WantList.fromJson(Map<String, dynamic> json) = _$_WantList.fromJson;

  @override
  Pagination get pagination;
  @override
  List<Want> get wants;
  @override
  @JsonKey(ignore: true)
  _$$_WantListCopyWith<_$_WantList> get copyWith =>
      throw _privateConstructorUsedError;
}
