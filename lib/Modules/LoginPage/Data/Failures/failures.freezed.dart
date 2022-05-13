// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  String get msg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) serverError,
    required TResult Function(String msg) invalidEmailPassword,
    required TResult Function(String msg) apiKeyInvalid,
    required TResult Function(String msg) parseError,
    required TResult Function(String msg) mustProvideAnEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? invalidEmailPassword,
    TResult Function(String msg)? apiKeyInvalid,
    TResult Function(String msg)? parseError,
    TResult Function(String msg)? mustProvideAnEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? invalidEmailPassword,
    TResult Function(String msg)? apiKeyInvalid,
    TResult Function(String msg)? parseError,
    TResult Function(String msg)? mustProvideAnEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidEmailPassword value) invalidEmailPassword,
    required TResult Function(_ApiKeyInvalid value) apiKeyInvalid,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_MustProvideAnEmailAndPassword value)
        mustProvideAnEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidEmailPassword value)? invalidEmailPassword,
    TResult Function(_ApiKeyInvalid value)? apiKeyInvalid,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_MustProvideAnEmailAndPassword value)?
        mustProvideAnEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidEmailPassword value)? invalidEmailPassword,
    TResult Function(_ApiKeyInvalid value)? apiKeyInvalid,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_MustProvideAnEmailAndPassword value)?
        mustProvideAnEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFailureCopyWith<AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, (v) => _then(v as _$_ServerError));

  @override
  _$_ServerError get _value => super._value as _$_ServerError;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$_ServerError(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'AuthFailure.serverError(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerError &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      __$$_ServerErrorCopyWithImpl<_$_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) serverError,
    required TResult Function(String msg) invalidEmailPassword,
    required TResult Function(String msg) apiKeyInvalid,
    required TResult Function(String msg) parseError,
    required TResult Function(String msg) mustProvideAnEmailAndPassword,
  }) {
    return serverError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? invalidEmailPassword,
    TResult Function(String msg)? apiKeyInvalid,
    TResult Function(String msg)? parseError,
    TResult Function(String msg)? mustProvideAnEmailAndPassword,
  }) {
    return serverError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? invalidEmailPassword,
    TResult Function(String msg)? apiKeyInvalid,
    TResult Function(String msg)? parseError,
    TResult Function(String msg)? mustProvideAnEmailAndPassword,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidEmailPassword value) invalidEmailPassword,
    required TResult Function(_ApiKeyInvalid value) apiKeyInvalid,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_MustProvideAnEmailAndPassword value)
        mustProvideAnEmailAndPassword,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidEmailPassword value)? invalidEmailPassword,
    TResult Function(_ApiKeyInvalid value)? apiKeyInvalid,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_MustProvideAnEmailAndPassword value)?
        mustProvideAnEmailAndPassword,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidEmailPassword value)? invalidEmailPassword,
    TResult Function(_ApiKeyInvalid value)? apiKeyInvalid,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_MustProvideAnEmailAndPassword value)?
        mustProvideAnEmailAndPassword,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AuthFailure {
  const factory _ServerError({required final String msg}) = _$_ServerError;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidEmailPasswordCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$_InvalidEmailPasswordCopyWith(_$_InvalidEmailPassword value,
          $Res Function(_$_InvalidEmailPassword) then) =
      __$$_InvalidEmailPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$$_InvalidEmailPasswordCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_InvalidEmailPasswordCopyWith<$Res> {
  __$$_InvalidEmailPasswordCopyWithImpl(_$_InvalidEmailPassword _value,
      $Res Function(_$_InvalidEmailPassword) _then)
      : super(_value, (v) => _then(v as _$_InvalidEmailPassword));

  @override
  _$_InvalidEmailPassword get _value => super._value as _$_InvalidEmailPassword;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$_InvalidEmailPassword(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidEmailPassword implements _InvalidEmailPassword {
  const _$_InvalidEmailPassword({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'AuthFailure.invalidEmailPassword(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidEmailPassword &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$$_InvalidEmailPasswordCopyWith<_$_InvalidEmailPassword> get copyWith =>
      __$$_InvalidEmailPasswordCopyWithImpl<_$_InvalidEmailPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) serverError,
    required TResult Function(String msg) invalidEmailPassword,
    required TResult Function(String msg) apiKeyInvalid,
    required TResult Function(String msg) parseError,
    required TResult Function(String msg) mustProvideAnEmailAndPassword,
  }) {
    return invalidEmailPassword(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? invalidEmailPassword,
    TResult Function(String msg)? apiKeyInvalid,
    TResult Function(String msg)? parseError,
    TResult Function(String msg)? mustProvideAnEmailAndPassword,
  }) {
    return invalidEmailPassword?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? invalidEmailPassword,
    TResult Function(String msg)? apiKeyInvalid,
    TResult Function(String msg)? parseError,
    TResult Function(String msg)? mustProvideAnEmailAndPassword,
    required TResult orElse(),
  }) {
    if (invalidEmailPassword != null) {
      return invalidEmailPassword(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidEmailPassword value) invalidEmailPassword,
    required TResult Function(_ApiKeyInvalid value) apiKeyInvalid,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_MustProvideAnEmailAndPassword value)
        mustProvideAnEmailAndPassword,
  }) {
    return invalidEmailPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidEmailPassword value)? invalidEmailPassword,
    TResult Function(_ApiKeyInvalid value)? apiKeyInvalid,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_MustProvideAnEmailAndPassword value)?
        mustProvideAnEmailAndPassword,
  }) {
    return invalidEmailPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidEmailPassword value)? invalidEmailPassword,
    TResult Function(_ApiKeyInvalid value)? apiKeyInvalid,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_MustProvideAnEmailAndPassword value)?
        mustProvideAnEmailAndPassword,
    required TResult orElse(),
  }) {
    if (invalidEmailPassword != null) {
      return invalidEmailPassword(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmailPassword implements AuthFailure {
  const factory _InvalidEmailPassword({required final String msg}) =
      _$_InvalidEmailPassword;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidEmailPasswordCopyWith<_$_InvalidEmailPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ApiKeyInvalidCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$_ApiKeyInvalidCopyWith(
          _$_ApiKeyInvalid value, $Res Function(_$_ApiKeyInvalid) then) =
      __$$_ApiKeyInvalidCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$$_ApiKeyInvalidCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_ApiKeyInvalidCopyWith<$Res> {
  __$$_ApiKeyInvalidCopyWithImpl(
      _$_ApiKeyInvalid _value, $Res Function(_$_ApiKeyInvalid) _then)
      : super(_value, (v) => _then(v as _$_ApiKeyInvalid));

  @override
  _$_ApiKeyInvalid get _value => super._value as _$_ApiKeyInvalid;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$_ApiKeyInvalid(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ApiKeyInvalid implements _ApiKeyInvalid {
  const _$_ApiKeyInvalid({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'AuthFailure.apiKeyInvalid(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiKeyInvalid &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$$_ApiKeyInvalidCopyWith<_$_ApiKeyInvalid> get copyWith =>
      __$$_ApiKeyInvalidCopyWithImpl<_$_ApiKeyInvalid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) serverError,
    required TResult Function(String msg) invalidEmailPassword,
    required TResult Function(String msg) apiKeyInvalid,
    required TResult Function(String msg) parseError,
    required TResult Function(String msg) mustProvideAnEmailAndPassword,
  }) {
    return apiKeyInvalid(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? invalidEmailPassword,
    TResult Function(String msg)? apiKeyInvalid,
    TResult Function(String msg)? parseError,
    TResult Function(String msg)? mustProvideAnEmailAndPassword,
  }) {
    return apiKeyInvalid?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? invalidEmailPassword,
    TResult Function(String msg)? apiKeyInvalid,
    TResult Function(String msg)? parseError,
    TResult Function(String msg)? mustProvideAnEmailAndPassword,
    required TResult orElse(),
  }) {
    if (apiKeyInvalid != null) {
      return apiKeyInvalid(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidEmailPassword value) invalidEmailPassword,
    required TResult Function(_ApiKeyInvalid value) apiKeyInvalid,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_MustProvideAnEmailAndPassword value)
        mustProvideAnEmailAndPassword,
  }) {
    return apiKeyInvalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidEmailPassword value)? invalidEmailPassword,
    TResult Function(_ApiKeyInvalid value)? apiKeyInvalid,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_MustProvideAnEmailAndPassword value)?
        mustProvideAnEmailAndPassword,
  }) {
    return apiKeyInvalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidEmailPassword value)? invalidEmailPassword,
    TResult Function(_ApiKeyInvalid value)? apiKeyInvalid,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_MustProvideAnEmailAndPassword value)?
        mustProvideAnEmailAndPassword,
    required TResult orElse(),
  }) {
    if (apiKeyInvalid != null) {
      return apiKeyInvalid(this);
    }
    return orElse();
  }
}

abstract class _ApiKeyInvalid implements AuthFailure {
  const factory _ApiKeyInvalid({required final String msg}) = _$_ApiKeyInvalid;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ApiKeyInvalidCopyWith<_$_ApiKeyInvalid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ParseErrorCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$_ParseErrorCopyWith(
          _$_ParseError value, $Res Function(_$_ParseError) then) =
      __$$_ParseErrorCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$$_ParseErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_ParseErrorCopyWith<$Res> {
  __$$_ParseErrorCopyWithImpl(
      _$_ParseError _value, $Res Function(_$_ParseError) _then)
      : super(_value, (v) => _then(v as _$_ParseError));

  @override
  _$_ParseError get _value => super._value as _$_ParseError;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$_ParseError(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ParseError implements _ParseError {
  const _$_ParseError({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'AuthFailure.parseError(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParseError &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$$_ParseErrorCopyWith<_$_ParseError> get copyWith =>
      __$$_ParseErrorCopyWithImpl<_$_ParseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) serverError,
    required TResult Function(String msg) invalidEmailPassword,
    required TResult Function(String msg) apiKeyInvalid,
    required TResult Function(String msg) parseError,
    required TResult Function(String msg) mustProvideAnEmailAndPassword,
  }) {
    return parseError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? invalidEmailPassword,
    TResult Function(String msg)? apiKeyInvalid,
    TResult Function(String msg)? parseError,
    TResult Function(String msg)? mustProvideAnEmailAndPassword,
  }) {
    return parseError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? invalidEmailPassword,
    TResult Function(String msg)? apiKeyInvalid,
    TResult Function(String msg)? parseError,
    TResult Function(String msg)? mustProvideAnEmailAndPassword,
    required TResult orElse(),
  }) {
    if (parseError != null) {
      return parseError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidEmailPassword value) invalidEmailPassword,
    required TResult Function(_ApiKeyInvalid value) apiKeyInvalid,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_MustProvideAnEmailAndPassword value)
        mustProvideAnEmailAndPassword,
  }) {
    return parseError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidEmailPassword value)? invalidEmailPassword,
    TResult Function(_ApiKeyInvalid value)? apiKeyInvalid,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_MustProvideAnEmailAndPassword value)?
        mustProvideAnEmailAndPassword,
  }) {
    return parseError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidEmailPassword value)? invalidEmailPassword,
    TResult Function(_ApiKeyInvalid value)? apiKeyInvalid,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_MustProvideAnEmailAndPassword value)?
        mustProvideAnEmailAndPassword,
    required TResult orElse(),
  }) {
    if (parseError != null) {
      return parseError(this);
    }
    return orElse();
  }
}

abstract class _ParseError implements AuthFailure {
  const factory _ParseError({required final String msg}) = _$_ParseError;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ParseErrorCopyWith<_$_ParseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MustProvideAnEmailAndPasswordCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$_MustProvideAnEmailAndPasswordCopyWith(
          _$_MustProvideAnEmailAndPassword value,
          $Res Function(_$_MustProvideAnEmailAndPassword) then) =
      __$$_MustProvideAnEmailAndPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$$_MustProvideAnEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_MustProvideAnEmailAndPasswordCopyWith<$Res> {
  __$$_MustProvideAnEmailAndPasswordCopyWithImpl(
      _$_MustProvideAnEmailAndPassword _value,
      $Res Function(_$_MustProvideAnEmailAndPassword) _then)
      : super(_value, (v) => _then(v as _$_MustProvideAnEmailAndPassword));

  @override
  _$_MustProvideAnEmailAndPassword get _value =>
      super._value as _$_MustProvideAnEmailAndPassword;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$_MustProvideAnEmailAndPassword(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MustProvideAnEmailAndPassword
    implements _MustProvideAnEmailAndPassword {
  const _$_MustProvideAnEmailAndPassword({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'AuthFailure.mustProvideAnEmailAndPassword(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MustProvideAnEmailAndPassword &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$$_MustProvideAnEmailAndPasswordCopyWith<_$_MustProvideAnEmailAndPassword>
      get copyWith => __$$_MustProvideAnEmailAndPasswordCopyWithImpl<
          _$_MustProvideAnEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) serverError,
    required TResult Function(String msg) invalidEmailPassword,
    required TResult Function(String msg) apiKeyInvalid,
    required TResult Function(String msg) parseError,
    required TResult Function(String msg) mustProvideAnEmailAndPassword,
  }) {
    return mustProvideAnEmailAndPassword(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? invalidEmailPassword,
    TResult Function(String msg)? apiKeyInvalid,
    TResult Function(String msg)? parseError,
    TResult Function(String msg)? mustProvideAnEmailAndPassword,
  }) {
    return mustProvideAnEmailAndPassword?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? invalidEmailPassword,
    TResult Function(String msg)? apiKeyInvalid,
    TResult Function(String msg)? parseError,
    TResult Function(String msg)? mustProvideAnEmailAndPassword,
    required TResult orElse(),
  }) {
    if (mustProvideAnEmailAndPassword != null) {
      return mustProvideAnEmailAndPassword(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidEmailPassword value) invalidEmailPassword,
    required TResult Function(_ApiKeyInvalid value) apiKeyInvalid,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_MustProvideAnEmailAndPassword value)
        mustProvideAnEmailAndPassword,
  }) {
    return mustProvideAnEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidEmailPassword value)? invalidEmailPassword,
    TResult Function(_ApiKeyInvalid value)? apiKeyInvalid,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_MustProvideAnEmailAndPassword value)?
        mustProvideAnEmailAndPassword,
  }) {
    return mustProvideAnEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidEmailPassword value)? invalidEmailPassword,
    TResult Function(_ApiKeyInvalid value)? apiKeyInvalid,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_MustProvideAnEmailAndPassword value)?
        mustProvideAnEmailAndPassword,
    required TResult orElse(),
  }) {
    if (mustProvideAnEmailAndPassword != null) {
      return mustProvideAnEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _MustProvideAnEmailAndPassword implements AuthFailure {
  const factory _MustProvideAnEmailAndPassword({required final String msg}) =
      _$_MustProvideAnEmailAndPassword;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MustProvideAnEmailAndPasswordCopyWith<_$_MustProvideAnEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}
