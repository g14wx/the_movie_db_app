import 'package:dartz/dartz.dart';

abstract class ITheMovieDbHomeRequests {
  Future<Either<Exception, Map<String, dynamic>>> getAllMovies({required String apiKey});
  Future<Either<Exception, Map<String, dynamic>>> getSearchMovie({required String query, required String apiKey});
}