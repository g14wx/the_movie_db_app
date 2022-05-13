import 'package:dartz/dartz.dart';
import 'package:the_movie_db_app/Models/Login/login_credentials.dart';
import 'package:the_movie_db_app/Models/Login/login_response.dart';
import 'package:the_movie_db_app/Models/Login/login_result.dart';
import 'package:the_movie_db_app/Models/Login/session_response.dart';
import 'package:the_movie_db_app/Models/Login/token_response.dart';
import 'package:the_movie_db_app/Modules/LoginPage/Data/Failures/failures.dart';

abstract class ITheMovieDbAuthService {
  Future<Either<AuthFailure, TokenResponse>> createTokenForLogin(String apiKey);
  Future<Either<AuthFailure, LoginResult>> login(LoginCredentials loginModel);
  Future<Either<AuthFailure, SessionResponse>> createSession(String tokenResponse, String apiKey);
  Future<Either<AuthFailure, LoginResponse>> loginWithToken(LoginCredentials tokenForLogin);
}