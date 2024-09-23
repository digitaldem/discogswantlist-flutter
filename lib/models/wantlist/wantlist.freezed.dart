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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WantList _$WantListFromJson(Map<String, dynamic> json) {
  return _WantList.fromJson(json);
}

/// @nodoc
mixin _$WantList {
  Pagination get pagination => throw _privateConstructorUsedError;
  List<Want> get wants => throw _privateConstructorUsedError;

  /// Serializes this WantList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WantList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of WantList
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of WantList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WantListImplCopyWith<$Res>
    implements $WantListCopyWith<$Res> {
  factory _$$WantListImplCopyWith(
          _$WantListImpl value, $Res Function(_$WantListImpl) then) =
      __$$WantListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Pagination pagination, List<Want> wants});

  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$WantListImplCopyWithImpl<$Res>
    extends _$WantListCopyWithImpl<$Res, _$WantListImpl>
    implements _$$WantListImplCopyWith<$Res> {
  __$$WantListImplCopyWithImpl(
      _$WantListImpl _value, $Res Function(_$WantListImpl) _then)
      : super(_value, _then);

  /// Create a copy of WantList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? wants = null,
  }) {
    return _then(_$WantListImpl(
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
class _$WantListImpl with DiagnosticableTreeMixin implements _WantList {
  _$WantListImpl({required this.pagination, required final List<Want> wants})
      : _wants = wants;

  factory _$WantListImpl.fromJson(Map<String, dynamic> json) =>
      _$$WantListImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WantListImpl &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other._wants, _wants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, pagination, const DeepCollectionEquality().hash(_wants));

  /// Create a copy of WantList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WantListImplCopyWith<_$WantListImpl> get copyWith =>
      __$$WantListImplCopyWithImpl<_$WantListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WantListImplToJson(
      this,
    );
  }
}

abstract class _WantList implements WantList {
  factory _WantList(
      {required final Pagination pagination,
      required final List<Want> wants}) = _$WantListImpl;

  factory _WantList.fromJson(Map<String, dynamic> json) =
      _$WantListImpl.fromJson;

  @override
  Pagination get pagination;
  @override
  List<Want> get wants;

  /// Create a copy of WantList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WantListImplCopyWith<_$WantListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
