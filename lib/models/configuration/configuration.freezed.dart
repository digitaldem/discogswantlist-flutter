// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Configuration _$ConfigurationFromJson(Map<String, dynamic> json) {
  return _Configuration.fromJson(json);
}

/// @nodoc
mixin _$Configuration {
  String? get discogsUrl => throw _privateConstructorUsedError;
  String? get discogsToken => throw _privateConstructorUsedError;
  String? get discogsUsername => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigurationCopyWith<Configuration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigurationCopyWith<$Res> {
  factory $ConfigurationCopyWith(
          Configuration value, $Res Function(Configuration) then) =
      _$ConfigurationCopyWithImpl<$Res, Configuration>;
  @useResult
  $Res call(
      {String? discogsUrl, String? discogsToken, String? discogsUsername});
}

/// @nodoc
class _$ConfigurationCopyWithImpl<$Res, $Val extends Configuration>
    implements $ConfigurationCopyWith<$Res> {
  _$ConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discogsUrl = freezed,
    Object? discogsToken = freezed,
    Object? discogsUsername = freezed,
  }) {
    return _then(_value.copyWith(
      discogsUrl: freezed == discogsUrl
          ? _value.discogsUrl
          : discogsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      discogsToken: freezed == discogsToken
          ? _value.discogsToken
          : discogsToken // ignore: cast_nullable_to_non_nullable
              as String?,
      discogsUsername: freezed == discogsUsername
          ? _value.discogsUsername
          : discogsUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfigurationImplCopyWith<$Res>
    implements $ConfigurationCopyWith<$Res> {
  factory _$$ConfigurationImplCopyWith(
          _$ConfigurationImpl value, $Res Function(_$ConfigurationImpl) then) =
      __$$ConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? discogsUrl, String? discogsToken, String? discogsUsername});
}

/// @nodoc
class __$$ConfigurationImplCopyWithImpl<$Res>
    extends _$ConfigurationCopyWithImpl<$Res, _$ConfigurationImpl>
    implements _$$ConfigurationImplCopyWith<$Res> {
  __$$ConfigurationImplCopyWithImpl(
      _$ConfigurationImpl _value, $Res Function(_$ConfigurationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discogsUrl = freezed,
    Object? discogsToken = freezed,
    Object? discogsUsername = freezed,
  }) {
    return _then(_$ConfigurationImpl(
      discogsUrl: freezed == discogsUrl
          ? _value.discogsUrl
          : discogsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      discogsToken: freezed == discogsToken
          ? _value.discogsToken
          : discogsToken // ignore: cast_nullable_to_non_nullable
              as String?,
      discogsUsername: freezed == discogsUsername
          ? _value.discogsUsername
          : discogsUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfigurationImpl
    with DiagnosticableTreeMixin
    implements _Configuration {
  const _$ConfigurationImpl(
      {required this.discogsUrl,
      required this.discogsToken,
      required this.discogsUsername});

  factory _$ConfigurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfigurationImplFromJson(json);

  @override
  final String? discogsUrl;
  @override
  final String? discogsToken;
  @override
  final String? discogsUsername;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Configuration(discogsUrl: $discogsUrl, discogsToken: $discogsToken, discogsUsername: $discogsUsername)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Configuration'))
      ..add(DiagnosticsProperty('discogsUrl', discogsUrl))
      ..add(DiagnosticsProperty('discogsToken', discogsToken))
      ..add(DiagnosticsProperty('discogsUsername', discogsUsername));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigurationImpl &&
            (identical(other.discogsUrl, discogsUrl) ||
                other.discogsUrl == discogsUrl) &&
            (identical(other.discogsToken, discogsToken) ||
                other.discogsToken == discogsToken) &&
            (identical(other.discogsUsername, discogsUsername) ||
                other.discogsUsername == discogsUsername));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, discogsUrl, discogsToken, discogsUsername);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigurationImplCopyWith<_$ConfigurationImpl> get copyWith =>
      __$$ConfigurationImplCopyWithImpl<_$ConfigurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfigurationImplToJson(
      this,
    );
  }
}

abstract class _Configuration implements Configuration {
  const factory _Configuration(
      {required final String? discogsUrl,
      required final String? discogsToken,
      required final String? discogsUsername}) = _$ConfigurationImpl;

  factory _Configuration.fromJson(Map<String, dynamic> json) =
      _$ConfigurationImpl.fromJson;

  @override
  String? get discogsUrl;
  @override
  String? get discogsToken;
  @override
  String? get discogsUsername;
  @override
  @JsonKey(ignore: true)
  _$$ConfigurationImplCopyWith<_$ConfigurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
