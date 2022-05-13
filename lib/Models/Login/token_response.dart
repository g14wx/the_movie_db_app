import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_response.freezed.dart';
part 'token_response.g.dart';


@immutable
@freezed
class TokenResponse with _$TokenResponse {
  const factory TokenResponse({required bool success, required String expires_at, required String request_token}) = _TokenResponse;

  factory TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);
}