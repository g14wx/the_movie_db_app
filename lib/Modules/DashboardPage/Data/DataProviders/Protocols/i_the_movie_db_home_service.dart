import 'package:dartz/dartz.dart';
import 'package:the_movie_db_app/Models/Movie/movie.dart';

abstract class ITheMovieDbHomeService {
  Future<Either<Exception, List<Movie>>> getAllMovies({required String apiKey});
  Future<Either<Exception, List<Movie>>> getSearchMovie({required String query, required String apiKey});
  Future<Either<Exception, List<Movie>>> getSuggestions({required int movieId, required String apiKey});
}