part of 'check_token_availity_bloc.dart';

@immutable
@freezed
class CheckTokenAvailityEvent with _$CheckTokenAvailityEvent {
const factory CheckTokenAvailityEvent.checkIfTokenExist() = CheckIfTokenExist;
}
