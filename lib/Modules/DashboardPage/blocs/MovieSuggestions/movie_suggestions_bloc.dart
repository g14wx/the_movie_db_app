import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:the_movie_db_app/Models/Movie/movie.dart';
import 'package:the_movie_db_app/Modules/DashboardPage/Data/DataProviders/Protocols/i_the_movie_db_home_service.dart';
import 'package:the_movie_db_app/Utils/Envs/protocols/i_env_tmdb.dart';

part 'movie_suggestions_bloc.freezed.dart';

part 'movie_suggestions_event.dart';

part 'movie_suggestions_state.dart';

@injectable
class MovieSuggestionsBloc
    extends Bloc<MovieSuggestionsEvent, MovieSuggestionsState> {
  MovieSuggestionsBloc(ITheMovieDbHomeService service, IEnvTMDB env)
      : super(const MovieSuggestionsState.loading()) {
    on<MovieSuggestionsEvent>((event, emit) async {
      await event.map(fetchSuggestions: (value) async {
        emit(const MovieSuggestionsState.loading());
        final resultMovies = await service.getAllMovies(apiKey: env.API_KEY);
        resultMovies.fold(
            (l) => emit(MovieSuggestionsState.error(msg: l.toString())),
            (r) => {emit(MovieSuggestionsState.loaded(movies: r))});
      }).catchError((e) {
        emit(MovieSuggestionsState.error(msg: e.toString()));
      });
    });
  }
}
