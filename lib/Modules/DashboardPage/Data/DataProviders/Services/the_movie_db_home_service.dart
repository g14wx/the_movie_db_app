import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_db_app/Models/Movie/movie.dart';
import 'package:the_movie_db_app/Models/Movie/movie_response.dart';
import 'package:the_movie_db_app/Modules/DashboardPage/Data/DataProviders/Protocols/i_the_movie_db_home_requests.dart';
import 'package:the_movie_db_app/Modules/DashboardPage/Data/DataProviders/Protocols/i_the_movie_db_home_service.dart';

@Injectable(as: ITheMovieDbHomeService)
class TheMovieDbHomeService implements ITheMovieDbHomeService {
  late final ITheMovieDbHomeRequests requester;

  TheMovieDbHomeService(ITheMovieDbHomeRequests requesterTMDB)
      : requester = requesterTMDB;

  @override
  Future<Either<Exception, List<Movie>>> getAllMovies(
      {required String apiKey}) async {
    final result = await requester.getAllMovies(apiKey: apiKey);
    return await result.fold((l) => Left(l), (json) {
      final movieResponse = MovieResponse.fromJson(json);
      return Right(movieResponse.results);
    });
  }

  @override
  Future<Either<Exception, List<Movie>>> getSearchMovie(
      {required String query, required String apiKey}) async {
    final result = await requester.getSearchMovie(query: query, apiKey: apiKey);
    return await result.fold((l) => Left(l), (json) {
      final movieResponse = MovieResponse.fromJson(json);
      return Right(movieResponse.results);
    });
  }

  @override
  Future<Either<Exception, List<Movie>>> getSuggestions(
      {required int movieId, required String apiKey}) async {
    final result =
        await requester.getSuggestions(movieId: movieId, apiKey: apiKey);
    return await result.fold((l) => Left(l), (json) {
      final movieResponse = MovieResponse.fromJson(json);
      return Right(movieResponse.results);
    });
  }
}
