// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../Modules/LoginPage/BusinessLogic/blocs/Login/login_bloc.dart'
    as _i13;
import '../../Modules/LoginPage/Data/DataProviders/Protocols/i_the_movie_db_auth_requests.dart'
    as _i9;
import '../../Modules/LoginPage/Data/DataProviders/Protocols/i_the_movie_db_auth_service.dart'
    as _i11;
import '../../Modules/LoginPage/Data/DataProviders/Services/the_movie_db_auth_requests.dart'
    as _i10;
import '../../Modules/LoginPage/Data/DataProviders/Services/the_movie_db_auth_service.dart'
    as _i12;
import '../../Modules/SwitcherPage/BusinessLogic/blocs/CheckTokenAvaility/check_token_availity_bloc.dart'
    as _i14;
import '../../Networking/DataService/protocols/i_data_service.dart' as _i3;
import '../../Networking/DataService/Services/data_service_http.dart' as _i4;
import '../DataStorage/protocols/i_data_storage.dart' as _i5;
import '../DataStorage/Services/data_storage.dart' as _i6;
import '../Envs/protocols/i_env_tmdb.dart' as _i7;
import '../Envs/TMDB/production_env_TMDB.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.IDataService>(() => _i4.DataServiceHttp());
  gh.factory<_i5.IDataStorage>(() => _i6.DataStorage());
  gh.factory<_i7.IEnvTMDB>(() => _i8.ProductionEnvTMDB());
  gh.factory<_i9.ITheMovieDbAuthRequests>(() => _i10.TheMovieDbAuthRequests(
      get<_i7.IEnvTMDB>(), get<_i3.IDataService>()));
  gh.factory<_i11.ITheMovieDbAuthService>(
      () => _i12.TheMovieDbAuthService(get<_i9.ITheMovieDbAuthRequests>()));
  gh.factory<_i13.LoginBloc>(() => _i13.LoginBloc(
      get<_i11.ITheMovieDbAuthService>(),
      get<_i5.IDataStorage>(),
      get<_i7.IEnvTMDB>()));
  gh.factory<_i14.CheckTokenAvailityBloc>(
      () => _i14.CheckTokenAvailityBloc(get<_i5.IDataStorage>()));
  return get;
}
