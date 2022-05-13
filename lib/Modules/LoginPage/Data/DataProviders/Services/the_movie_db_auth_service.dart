import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_db_app/Models/Login/login_credentials.dart';
import 'package:the_movie_db_app/Models/Login/login_response.dart';
import 'package:the_movie_db_app/Models/Login/login_result.dart';
import 'package:the_movie_db_app/Models/Login/session_response.dart';
import 'package:the_movie_db_app/Models/Login/token_response.dart';
import 'package:the_movie_db_app/Modules/LoginPage/Data/DataProviders/Protocols/i_the_movie_db_auth_requests.dart';
import 'package:the_movie_db_app/Modules/LoginPage/Data/DataProviders/Protocols/i_the_movie_db_auth_service.dart';
import 'package:the_movie_db_app/Modules/LoginPage/Data/Failures/failures.dart';

@Injectable(as: ITheMovieDbAuthService)
class TheMovieDbAuthService implements ITheMovieDbAuthService {
  late final ITheMovieDbAuthRequests requester;

  TheMovieDbAuthService(ITheMovieDbAuthRequests requesterTMDB)
      : requester = requesterTMDB;

  @override
  Future<Either<AuthFailure, TokenResponse>> createTokenForLogin(
      String apiKey) async {
    final result = await requester.createTokenForLogin(apiKey);
    return await result.fold((l) => Left(l), (json) {
      final tokenResponse = TokenResponse.fromJson(json);
      return Right(tokenResponse);
    });
  }

  @override
  Future<Either<AuthFailure, LoginResult>> login(
      LoginCredentials loginModel) async {
    final token = await createTokenForLogin(loginModel.apiKey);
    return await token.fold((l) => Left(l), (resultToken) async {
      final credentials =
          loginModel.copyWith(requestToken: resultToken.request_token);
      final loginToken = await loginWithToken(credentials);
      return await loginToken.fold((l) => Left(l),
          (resultLoginWithToken) async {
        final session = await createSession(
            resultLoginWithToken.request_token, loginModel.apiKey);
        return await session.fold((l) => Left(l), (r) {
          final loginResult =
              LoginResult(sessionId: r.session_id, username: "");
          return Right(loginResult);
        });
      });
    });
  }

  @override
  Future<Either<AuthFailure, SessionResponse>> createSession(
      String tokenResponse, String apiKey) async {
    final response = await requester.createSession(tokenResponse, apiKey);
    return await response.fold((l) => Left(l), (sessionResult) {
      final sessionResponse = SessionResponse.fromJson(sessionResult);
      return Right(sessionResponse);
    });
  }

  @override
  Future<Either<AuthFailure, LoginResponse>> loginWithToken(
      LoginCredentials loginCredentials) async {
    final loginResponse = await requester.login(loginCredentials);
    return await loginResponse.fold((l) => Left(l), (json) {
      final loginResponse = LoginResponse.fromJson(json);
      return Right(loginResponse);
    });
  }
}
