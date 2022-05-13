import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_credentials.freezed.dart';

@immutable
@freezed
class LoginCredentials with _$LoginCredentials {
const factory LoginCredentials({required String username, required String password, required String requestToken, required String apiKey}) = _LoginCredentials;
}