// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$$_LoginResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginResponse(
      success: json['success'] as bool,
      expires_at: json['expires_at'] as String,
      request_token: json['request_token'] as String,
    );

Map<String, dynamic> _$$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'expires_at': instance.expires_at,
      'request_token': instance.request_token,
    };
