import 'package:dartz/dartz.dart';
import 'package:the_movie_db_app/Models/Login/login_credentials.dart';
import 'package:the_movie_db_app/Modules/LoginPage/Data/Failures/failures.dart';

abstract class ITheMovieDbAuthRequests {
  Future<Either<AuthFailure, Map<String, dynamic>>> login(LoginCredentials loginModel);
  Future<Either<AuthFailure, Map<String, dynamic>>> createTokenForLogin(String apiKey);
  Future<Either<AuthFailure, Map<String, dynamic>>> createSession(String token, String apiKey);
}