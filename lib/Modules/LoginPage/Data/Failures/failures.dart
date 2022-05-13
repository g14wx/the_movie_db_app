import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure implements Exception {
  const factory AuthFailure.serverError({required String msg}) = _ServerError;
  const factory AuthFailure.invalidEmailPassword({required String msg}) = _InvalidEmailPassword;
  const factory AuthFailure.apiKeyInvalid({required String msg}) = _ApiKeyInvalid;
  const factory AuthFailure.parseError({required String msg}) = _ParseError;
  const factory AuthFailure.mustProvideAnEmailAndPassword({required String msg}) = _MustProvideAnEmailAndPassword;
}
