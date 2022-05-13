part of 'login_bloc.dart';

@immutable
@freezed
@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.tryLogin({required String username, required String password}) = TryLogin;
}
