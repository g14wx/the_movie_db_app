import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_response.freezed.dart';
part 'session_response.g.dart';


@immutable
@freezed
class SessionResponse with _$SessionResponse {
  const factory SessionResponse({required bool success, required String session_id}) = _SessionResponse;

  factory SessionResponse.fromJson(Map<String, dynamic> json) =>
      _$SessionResponseFromJson(json);
}