part of 'check_token_availity_bloc.dart';

@immutable
@freezed
@freezed
class CheckTokenAvailityState with _$CheckTokenAvailityState{
  const factory CheckTokenAvailityState.exists() = Exists;
  const factory CheckTokenAvailityState.doesntExists() = DoesntExists;
  const factory CheckTokenAvailityState.loading() = Loading;
}