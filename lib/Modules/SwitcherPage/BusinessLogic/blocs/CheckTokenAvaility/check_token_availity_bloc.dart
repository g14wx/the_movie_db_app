import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_db_app/Constants/storage_keys.dart';
import 'package:the_movie_db_app/Utils/DataStorage/protocols/i_data_storage.dart';

part 'check_token_availity_bloc.freezed.dart';

part 'check_token_availity_event.dart';

part 'check_token_availity_state.dart';

@injectable
class CheckTokenAvailityBloc
    extends Bloc<CheckTokenAvailityEvent, CheckTokenAvailityState> {
  CheckTokenAvailityBloc(IDataStorage dataStorage) : super(const CheckTokenAvailityState.loading()) {
    on<CheckTokenAvailityEvent>((event, emit) async {
      await event.map(checkIfTokenExist: (_) async {
        final result =await dataStorage.getDataSecureData(service: StorageKeys.SERVICE_SECURE, key: StorageKeys.KEY_SESSION, secureKey: '');
        result.fold((l) => changeState(null), (r) => changeState(r));
      });
    });
  }

  void changeState(dynamic token) {
    if (token != null) {
      emit(const CheckTokenAvailityState.exists());
    } else {
      emit(const CheckTokenAvailityState.doesntExists());
    }
  }

}
