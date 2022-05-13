import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:the_movie_db_app/Models/Movie/movie.dart';
import 'package:the_movie_db_app/Modules/DashboardPage/Data/DataProviders/Protocols/i_the_movie_db_home_service.dart';
import 'package:the_movie_db_app/Utils/Envs/protocols/i_env_tmdb.dart';

part 'movies_search_event.dart';
part 'movies_search_state.dart';

part 'movies_search_bloc.freezed.dart';

@injectable
class MoviesSearchBloc extends Bloc<MoviesSearchEvent, MoviesSearchState> {
  MoviesSearchBloc(ITheMovieDbHomeService service, IEnvTMDB env) : super(const MoviesSearchState.initialState()) {
    on<MoviesSearchEvent>((event, emit) async {
      await event.map(searchMovies: (value) async {
        emit(const MoviesSearchState.loadingSearchState());
        final resultMovies = await service.getSearchMovie(query: value.query,apiKey: env.API_KEY);
        resultMovies.fold(
                (l) => emit(MoviesSearchState.errorSearch(message: l.toString())),
                (r) => {emit(MoviesSearchState.loadedSearchState(movies: r))});
      });
    });
  }
}
