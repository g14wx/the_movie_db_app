import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_result.g.dart';
part 'login_result.freezed.dart';

@immutable
@freezed
class LoginResult with _$LoginResult {
  const factory LoginResult({required String sessionId,required String username}) = _LoginResult;

  factory LoginResult.fromJson(Map<String, dynamic> json) =>
      _$LoginResultFromJson(json);
}