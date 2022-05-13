// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenResponse _$TokenResponseFromJson(Map<String, dynamic> json) {
  return _TokenResponse.fromJson(json);
}

/// @nodoc
mixin _$TokenResponse {
  bool get success => throw _privateConstructorUsedError;
  String get expires_at => throw _privateConstructorUsedError;
  String get request_token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenResponseCopyWith<TokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenResponseCopyWith<$Res> {
  factory $TokenResponseCopyWith(
          TokenResponse value, $Res Function(TokenResponse) then) =
      _$TokenResponseCopyWithImpl<$Res>;
  $Res call({bool success, String expires_at, String request_token});
}

/// @nodoc
class _$TokenResponseCopyWithImpl<$Res>
    implements $TokenResponseCopyWith<$Res> {
  _$TokenResponseCopyWithImpl(this._value, this._then);

  final TokenResponse _value;
  // ignore: unused_field
  final $Res Function(TokenResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? expires_at = freezed,
    Object? request_token = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      expires_at: expires_at == freezed
          ? _value.expires_at
          : expires_at // ignore: cast_nullable_to_non_nullable
              as String,
      request_token: request_token == freezed
          ? _value.request_token
          : request_token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TokenResponseCopyWith<$Res>
    implements $TokenResponseCopyWith<$Res> {
  factory _$$_TokenResponseCopyWith(
          _$_TokenResponse value, $Res Function(_$_TokenResponse) then) =
      __$$_TokenResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String expires_at, String request_token});
}

/// @nodoc
class __$$_TokenResponseCopyWithImpl<$Res>
    extends _$TokenResponseCopyWithImpl<$Res>
    implements _$$_TokenResponseCopyWith<$Res> {
  __$$_TokenResponseCopyWithImpl(
      _$_TokenResponse _value, $Res Function(_$_TokenResponse) _then)
      : super(_value, (v) => _then(v as _$_TokenResponse));

  @override
  _$_TokenResponse get _value => super._value as _$_TokenResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? expires_at = freezed,
    Object? request_token = freezed,
  }) {
    return _then(_$_TokenResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      expires_at: expires_at == freezed
          ? _value.expires_at
          : expires_at // ignore: cast_nullable_to_non_nullable
              as String,
      request_token: request_token == freezed
          ? _value.request_token
          : request_token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenResponse implements _TokenResponse {
  const _$_TokenResponse(
      {required this.success,
      required this.expires_at,
      required this.request_token});

  factory _$_TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TokenResponseFromJson(json);

  @override
  final bool success;
  @override
  final String expires_at;
  @override
  final String request_token;

  @override
  String toString() {
    return 'TokenResponse(success: $success, expires_at: $expires_at, request_token: $request_token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality()
                .equals(other.expires_at, expires_at) &&
            const DeepCollectionEquality()
                .equals(other.request_token, request_token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(expires_at),
      const DeepCollectionEquality().hash(request_token));

  @JsonKey(ignore: true)
  @override
  _$$_TokenResponseCopyWith<_$_TokenResponse> get copyWith =>
      __$$_TokenResponseCopyWithImpl<_$_TokenResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenResponseToJson(this);
  }
}

abstract class _TokenResponse implements TokenResponse {
  const factory _TokenResponse(
      {required final bool success,
      required final String expires_at,
      required final String request_token}) = _$_TokenResponse;

  factory _TokenResponse.fromJson(Map<String, dynamic> json) =
      _$_TokenResponse.fromJson;

  @override
  bool get success => throw _privateConstructorUsedError;
  @override
  String get expires_at => throw _privateConstructorUsedError;
  @override
  String get request_token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TokenResponseCopyWith<_$_TokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
