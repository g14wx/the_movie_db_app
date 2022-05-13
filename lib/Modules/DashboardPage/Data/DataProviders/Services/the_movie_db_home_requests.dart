import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_db_app/Models/DataService/Data_service_response.dart';
import 'package:the_movie_db_app/Modules/DashboardPage/Data/DataProviders/Protocols/i_the_movie_db_home_requests.dart';
import 'package:the_movie_db_app/Networking/DataService/protocols/i_data_service.dart';
import 'package:the_movie_db_app/Utils/Envs/protocols/i_env_tmdb.dart';

@Injectable(as: ITheMovieDbHomeRequests)
class TheMovieDbHomeRequests implements ITheMovieDbHomeRequests {
  late final IEnvTMDB _env;
  late final IDataService _dataService;

  TheMovieDbHomeRequests(IEnvTMDB enviroment, IDataService dataService)
      : _env = enviroment,
        _dataService = dataService;

  @override
  Future<Either<Exception, Map<String, dynamic>>> getAllMovies(
      {required String apiKey}) async {
    final url = _env.HOSTNAME;
    final path = "${_env.VERSION_PATH}${_env.GET_ALL_MOVIES}";
    final body = {"api_key": apiKey};

    final Either<Exception, DataServiceResponse> result =
        await _dataService.get(url: url, path: path, body: body);

    return await result.fold((l) {
      return Left(Exception("Something went wrong fetching movies."));
    }, (result) {
      if (result.data != null && result.statusCode == 200) {
        var castedResponse = result.data as Map<String, dynamic>;
        return Right(castedResponse);
      } else if (result.statusCode == 401) {
        return Left(Exception(
            "Something is configure, please provided a valid api key, developer."));
      } else {
        return Left(Exception("Something went wrong, please try again later."));
      }
    });
  }

  @override
  Future<Either<Exception, Map<String, dynamic>>> getSearchMovie({required String query, required String apiKey}) async {
    final url = _env.HOSTNAME;
    final path = "${_env.VERSION_PATH}${_env.SERCH_MOVIE_PATH}";
    final body = {"api_key": apiKey, "query": query};

    final Either<Exception, DataServiceResponse> result =
    await _dataService.get(url: url, path: path, body: body);

    return await result.fold((l) {
      return Left(Exception("Something went wrong fetching movies."));
    }, (result) {
      if (result.data != null && result.statusCode == 200) {
        var castedResponse = result.data as Map<String, dynamic>;
        return Right(castedResponse);
      } else if (result.statusCode == 401) {
        return Left(Exception(
            "Something is configure, please provided a valid api key, developer."));
      } else {
        return Left(Exception("Something went wrong, please try again later."));
      }
    });
  }

  @override
  Future<Either<Exception, Map<String, dynamic>>> getSuggestions({required int movieId, required String apiKey}) async {
    final url = _env.HOSTNAME;
    final path = "${_env.VERSION_PATH}${_env.SUGGESTIONS_PATH}/${movieId.toString()}/recommendations";
    final body = {"api_key": apiKey};

    final Either<Exception, DataServiceResponse> result =
        await _dataService.get(url: url, path: path, body: body);

    return await result.fold((l) {
      return Left(Exception("Something went wrong fetching movies."));
    }, (result) {
      if (result.data != null && result.statusCode == 200) {
        var castedResponse = result.data as Map<String, dynamic>;
        return Right(castedResponse);
      } else if (result.statusCode == 401) {
        return Left(Exception(
            "Something is configure, please provided a valid api key, developer."));
      } else {
        return Left(Exception("Something went wrong, please try again later."));
      }
    });
  }
}
