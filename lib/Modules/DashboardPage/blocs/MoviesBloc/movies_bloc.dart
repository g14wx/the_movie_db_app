import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:the_movie_db_app/Models/Movie/movie.dart';
import 'package:the_movie_db_app/Modules/DashboardPage/Data/DataProviders/Protocols/i_the_movie_db_home_service.dart';
import 'package:the_movie_db_app/Utils/Envs/protocols/i_env_tmdb.dart';

part 'movies_bloc.freezed.dart';

part 'movies_event.dart';

part 'movies_state.dart';

@injectable
class MoviesBloc extends Bloc<MoviesEvent, MovieState> {
  MoviesBloc(ITheMovieDbHomeService service, IEnvTMDB env)
      : super(const MovieState.loadingState()) {
    on<MoviesEvent>((event, emit) async {
      await event.map(
        fetchMovies: (_) async {
          emit(const MovieState.loadingState());
          final resultMovies = await service.getAllMovies(apiKey: env.API_KEY);
          resultMovies.fold(
              (l) => emit(MovieState.errorFetching(message: l.toString())),
              (r) => {emit(MovieState.loaded(movies: r))});
        },
      ).catchError((e) {
        emit(MovieState.errorFetching(message: e.toString()));
      });
    });
  }
}
