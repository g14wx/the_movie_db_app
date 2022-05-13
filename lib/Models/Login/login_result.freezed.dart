// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResult _$LoginResultFromJson(Map<String, dynamic> json) {
  return _LoginResult.fromJson(json);
}

/// @nodoc
mixin _$LoginResult {
  String get sessionId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResultCopyWith<LoginResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultCopyWith<$Res> {
  factory $LoginResultCopyWith(
          LoginResult value, $Res Function(LoginResult) then) =
      _$LoginResultCopyWithImpl<$Res>;
  $Res call({String sessionId, String username});
}

/// @nodoc
class _$LoginResultCopyWithImpl<$Res> implements $LoginResultCopyWith<$Res> {
  _$LoginResultCopyWithImpl(this._value, this._then);

  final LoginResult _value;
  // ignore: unused_field
  final $Res Function(LoginResult) _then;

  @override
  $Res call({
    Object? sessionId = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginResultCopyWith<$Res>
    implements $LoginResultCopyWith<$Res> {
  factory _$$_LoginResultCopyWith(
          _$_LoginResult value, $Res Function(_$_LoginResult) then) =
      __$$_LoginResultCopyWithImpl<$Res>;
  @override
  $Res call({String sessionId, String username});
}

/// @nodoc
class __$$_LoginResultCopyWithImpl<$Res> extends _$LoginResultCopyWithImpl<$Res>
    implements _$$_LoginResultCopyWith<$Res> {
  __$$_LoginResultCopyWithImpl(
      _$_LoginResult _value, $Res Function(_$_LoginResult) _then)
      : super(_value, (v) => _then(v as _$_LoginResult));

  @override
  _$_LoginResult get _value => super._value as _$_LoginResult;

  @override
  $Res call({
    Object? sessionId = freezed,
    Object? username = freezed,
  }) {
    return _then(_$_LoginResult(
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginResult implements _LoginResult {
  const _$_LoginResult({required this.sessionId, required this.username});

  factory _$_LoginResult.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResultFromJson(json);

  @override
  final String sessionId;
  @override
  final String username;

  @override
  String toString() {
    return 'LoginResult(sessionId: $sessionId, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResult &&
            const DeepCollectionEquality().equals(other.sessionId, sessionId) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sessionId),
      const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_LoginResultCopyWith<_$_LoginResult> get copyWith =>
      __$$_LoginResultCopyWithImpl<_$_LoginResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResultToJson(this);
  }
}

abstract class _LoginResult implements LoginResult {
  const factory _LoginResult(
      {required final String sessionId,
      required final String username}) = _$_LoginResult;

  factory _LoginResult.fromJson(Map<String, dynamic> json) =
      _$_LoginResult.fromJson;

  @override
  String get sessionId => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResultCopyWith<_$_LoginResult> get copyWith =>
      throw _privateConstructorUsedError;
}
