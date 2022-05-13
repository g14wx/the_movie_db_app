// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenResponse _$$_TokenResponseFromJson(Map<String, dynamic> json) =>
    _$_TokenResponse(
      success: json['success'] as bool,
      expires_at: json['expires_at'] as String,
      request_token: json['request_token'] as String,
    );

Map<String, dynamic> _$$_TokenResponseToJson(_$_TokenResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'expires_at': instance.expires_at,
      'request_token': instance.request_token,
    };
