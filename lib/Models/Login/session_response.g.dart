// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionResponse _$$_SessionResponseFromJson(Map<String, dynamic> json) =>
    _$_SessionResponse(
      success: json['success'] as bool,
      session_id: json['session_id'] as String,
    );

Map<String, dynamic> _$$_SessionResponseToJson(_$_SessionResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'session_id': instance.session_id,
    };
