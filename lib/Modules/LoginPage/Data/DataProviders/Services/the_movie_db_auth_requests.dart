import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_db_app/Models/DataService/Data_service_response.dart';
import 'package:the_movie_db_app/Models/Login/login_credentials.dart';
import 'package:the_movie_db_app/Modules/LoginPage/Data/DataProviders/Protocols/i_the_movie_db_auth_requests.dart';
import 'package:the_movie_db_app/Modules/LoginPage/Data/Failures/failures.dart';
import 'package:the_movie_db_app/Networking/DataService/protocols/i_data_service.dart';
import 'package:the_movie_db_app/Utils/Envs/protocols/i_env_tmdb.dart';

@Injectable(as: ITheMovieDbAuthRequests)
class TheMovieDbAuthRequests implements ITheMovieDbAuthRequests {
  late final IEnvTMDB _env;
  late final IDataService _dataService;

  TheMovieDbAuthRequests(IEnvTMDB enviroment, IDataService dataService)
      : _env = enviroment,
        _dataService = dataService;

  @override
  Future<Either<AuthFailure, Map<String, dynamic>>> login(
      LoginCredentials loginCredentials) async {
    final body = {
      "username": loginCredentials.username,
      "password": loginCredentials.password,
      "request_token": loginCredentials.requestToken
    };
    final url = _env.HOSTNAME;
    final path = "${_env.VERSION_PATH}${_env.LOGIN_API_PATH}";
    final queryParameters = {
      "api_key": loginCredentials.apiKey
    };
    final Either<Exception, DataServiceResponse> result =
        await _dataService.post(url: url, path: path ,body: body, queryParameters: queryParameters);

    return await result.fold((l) {
      return Left(AuthFailure.serverError(msg: l.toString()));
    }, (response) {
      if (response.data != null && response.statusCode == 200) {
        var castedResponse = response.data as Map<String, dynamic>;
        return Right(castedResponse);
      } else if (response.statusCode == 400) {
        return const Left(AuthFailure.mustProvideAnEmailAndPassword(
            msg: "You must provided a email and password to login."));
      } else if (response.statusCode == 401) {
        return const Left(AuthFailure.invalidEmailPassword(
            msg: "Invalid credentials, is this you?."));
      } else {
        return const Left(AuthFailure.serverError(
            msg: "Something went wrong, please try again later."));
      }
    });
  }

  @override
  Future<Either<AuthFailure, Map<String, dynamic>>>
      createTokenForLogin(String apiKey) async {
    final url = _env.HOSTNAME;
    final path = "${_env.VERSION_PATH}${_env.CREATE_TOKEN_PATH}";
    final body = {
      "api_key" : apiKey
    };

    final Either<Exception, DataServiceResponse> result =
        await _dataService.get(url: url, path: path,body: body);

    return await result.fold((l) {
      return Left(AuthFailure.serverError(msg: l.toString()));
    }, (result) {
      if (result.data != null && result.statusCode == 200) {
        var castedResponse = result.data as Map<String, dynamic>;
        return Right(castedResponse);
      } else if (result.statusCode == 401) {
        return const Left(AuthFailure.parseError(
            msg:
                "Something is configure, please provided a valid api key, developer."));
      } else {
        return const Left(AuthFailure.serverError(
            msg: "Something went wrong, please try again later."));
      }
    });
  }

  @override
  Future<Either<AuthFailure, Map<String, dynamic>>> createSession(
      String token, String apiKey) async {

    final body = {"request_token": token};
    final url = _env.HOSTNAME;
    final path = "${_env.VERSION_PATH}${_env.SESSION_PATH}";
    final queryParameters = {
      "api_key": apiKey
    };
    final Either<Exception, DataServiceResponse> result =
        await _dataService.post(url: url, path: path, body: body, queryParameters: queryParameters);

    return await result.fold((l) {
      return Left(AuthFailure.serverError(msg: l.toString()));
    }, (result) {
      if (result.data != null && result.statusCode == 200) {
        var castedResponse = result.data as Map<String, dynamic>;
        return Right(castedResponse);
      } else if (result.statusCode == 401) {
        return const Left(AuthFailure.parseError(
            msg:
                "Something is configure, please provided a valid api key, developer."));
      } else {
        return const Left(AuthFailure.serverError(
            msg: "Something went wrong, please try again later."));
      }
    });
  }
}
