import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_db_app/Constants/storage_keys.dart';
import 'package:the_movie_db_app/Models/Login/login_credentials.dart';
import 'package:the_movie_db_app/Modules/LoginPage/Data/DataProviders/Protocols/i_the_movie_db_auth_service.dart';
import 'package:the_movie_db_app/Utils/DataStorage/protocols/i_data_storage.dart';
import 'package:the_movie_db_app/Utils/Envs/protocols/i_env_tmdb.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';

part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(ITheMovieDbAuthService service, IDataStorage dataStorage, IEnvTMDB env)
      : super(const Initial()) {
    on<LoginEvent>((event, emit) async {
      await event.map(tryLogin: (credentials) async {
        emit(const LoginState.loading());
        final loginCrentials = LoginCredentials(
            username: credentials.username,
            password: credentials.password,
            requestToken: "",
        apiKey: env.API_KEY);
        final result = await service.login(loginCrentials);
        result.fold((l) => emit(LoginState.error(msg: l.msg)), (sessionResult) {
          dataStorage.writeDataSecureData(service: StorageKeys.SERVICE_SECURE, key: StorageKeys.KEY_SESSION, value: sessionResult.sessionId);
          emit(const LoginState.loginSuccess());
        });
      }).catchError((e) {
        emit(LoginState.error(msg: e.toString()));
      });
    });
  }
}
