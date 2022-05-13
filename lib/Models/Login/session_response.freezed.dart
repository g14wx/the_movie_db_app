// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionResponse _$SessionResponseFromJson(Map<String, dynamic> json) {
  return _SessionResponse.fromJson(json);
}

/// @nodoc
mixin _$SessionResponse {
  bool get success => throw _privateConstructorUsedError;
  String get session_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionResponseCopyWith<SessionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionResponseCopyWith<$Res> {
  factory $SessionResponseCopyWith(
          SessionResponse value, $Res Function(SessionResponse) then) =
      _$SessionResponseCopyWithImpl<$Res>;
  $Res call({bool success, String session_id});
}

/// @nodoc
class _$SessionResponseCopyWithImpl<$Res>
    implements $SessionResponseCopyWith<$Res> {
  _$SessionResponseCopyWithImpl(this._value, this._then);

  final SessionResponse _value;
  // ignore: unused_field
  final $Res Function(SessionResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? session_id = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      session_id: session_id == freezed
          ? _value.session_id
          : session_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SessionResponseCopyWith<$Res>
    implements $SessionResponseCopyWith<$Res> {
  factory _$$_SessionResponseCopyWith(
          _$_SessionResponse value, $Res Function(_$_SessionResponse) then) =
      __$$_SessionResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String session_id});
}

/// @nodoc
class __$$_SessionResponseCopyWithImpl<$Res>
    extends _$SessionResponseCopyWithImpl<$Res>
    implements _$$_SessionResponseCopyWith<$Res> {
  __$$_SessionResponseCopyWithImpl(
      _$_SessionResponse _value, $Res Function(_$_SessionResponse) _then)
      : super(_value, (v) => _then(v as _$_SessionResponse));

  @override
  _$_SessionResponse get _value => super._value as _$_SessionResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? session_id = freezed,
  }) {
    return _then(_$_SessionResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      session_id: session_id == freezed
          ? _value.session_id
          : session_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionResponse implements _SessionResponse {
  const _$_SessionResponse({required this.success, required this.session_id});

  factory _$_SessionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SessionResponseFromJson(json);

  @override
  final bool success;
  @override
  final String session_id;

  @override
  String toString() {
    return 'SessionResponse(success: $success, session_id: $session_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality()
                .equals(other.session_id, session_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(session_id));

  @JsonKey(ignore: true)
  @override
  _$$_SessionResponseCopyWith<_$_SessionResponse> get copyWith =>
      __$$_SessionResponseCopyWithImpl<_$_SessionResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionResponseToJson(this);
  }
}

abstract class _SessionResponse implements SessionResponse {
  const factory _SessionResponse(
      {required final bool success,
      required final String session_id}) = _$_SessionResponse;

  factory _SessionResponse.fromJson(Map<String, dynamic> json) =
      _$_SessionResponse.fromJson;

  @override
  bool get success => throw _privateConstructorUsedError;
  @override
  String get session_id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SessionResponseCopyWith<_$_SessionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
