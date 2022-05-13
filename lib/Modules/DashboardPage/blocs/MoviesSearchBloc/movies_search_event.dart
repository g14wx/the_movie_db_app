part of 'movies_search_bloc.dart';

@immutable
@freezed
class MoviesSearchEvent with _$MoviesSearchEvent {
  const factory MoviesSearchEvent.searchMovies({required String query, required String apiKey}) = SearchMovies;
}
