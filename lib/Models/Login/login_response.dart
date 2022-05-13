import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@immutable
@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse(
      {required bool success, required String expires_at, required String request_token}) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}