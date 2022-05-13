// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginCredentials {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get requestToken => throw _privateConstructorUsedError;
  String get apiKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginCredentialsCopyWith<LoginCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCredentialsCopyWith<$Res> {
  factory $LoginCredentialsCopyWith(
          LoginCredentials value, $Res Function(LoginCredentials) then) =
      _$LoginCredentialsCopyWithImpl<$Res>;
  $Res call(
      {String username, String password, String requestToken, String apiKey});
}

/// @nodoc
class _$LoginCredentialsCopyWithImpl<$Res>
    implements $LoginCredentialsCopyWith<$Res> {
  _$LoginCredentialsCopyWithImpl(this._value, this._then);

  final LoginCredentials _value;
  // ignore: unused_field
  final $Res Function(LoginCredentials) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? requestToken = freezed,
    Object? apiKey = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      requestToken: requestToken == freezed
          ? _value.requestToken
          : requestToken // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: apiKey == freezed
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginCredentialsCopyWith<$Res>
    implements $LoginCredentialsCopyWith<$Res> {
  factory _$$_LoginCredentialsCopyWith(
          _$_LoginCredentials value, $Res Function(_$_LoginCredentials) then) =
      __$$_LoginCredentialsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String username, String password, String requestToken, String apiKey});
}

/// @nodoc
class __$$_LoginCredentialsCopyWithImpl<$Res>
    extends _$LoginCredentialsCopyWithImpl<$Res>
    implements _$$_LoginCredentialsCopyWith<$Res> {
  __$$_LoginCredentialsCopyWithImpl(
      _$_LoginCredentials _value, $Res Function(_$_LoginCredentials) _then)
      : super(_value, (v) => _then(v as _$_LoginCredentials));

  @override
  _$_LoginCredentials get _value => super._value as _$_LoginCredentials;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? requestToken = freezed,
    Object? apiKey = freezed,
  }) {
    return _then(_$_LoginCredentials(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      requestToken: requestToken == freezed
          ? _value.requestToken
          : requestToken // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: apiKey == freezed
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginCredentials implements _LoginCredentials {
  const _$_LoginCredentials(
      {required this.username,
      required this.password,
      required this.requestToken,
      required this.apiKey});

  @override
  final String username;
  @override
  final String password;
  @override
  final String requestToken;
  @override
  final String apiKey;

  @override
  String toString() {
    return 'LoginCredentials(username: $username, password: $password, requestToken: $requestToken, apiKey: $apiKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginCredentials &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.requestToken, requestToken) &&
            const DeepCollectionEquality().equals(other.apiKey, apiKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(requestToken),
      const DeepCollectionEquality().hash(apiKey));

  @JsonKey(ignore: true)
  @override
  _$$_LoginCredentialsCopyWith<_$_LoginCredentials> get copyWith =>
      __$$_LoginCredentialsCopyWithImpl<_$_LoginCredentials>(this, _$identity);
}

abstract class _LoginCredentials implements LoginCredentials {
  const factory _LoginCredentials(
      {required final String username,
      required final String password,
      required final String requestToken,
      required final String apiKey}) = _$_LoginCredentials;

  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get requestToken => throw _privateConstructorUsedError;
  @override
  String get apiKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoginCredentialsCopyWith<_$_LoginCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}
