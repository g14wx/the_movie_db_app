part of 'login_bloc.dart';
@immutable
@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.error({required String msg}) = Error;
  const factory LoginState.invalidPasswordEmail({required String msg}) = _InvalidPasswordEmail;
  const factory LoginState.loginSuccess() = LoginSuccess;
}
