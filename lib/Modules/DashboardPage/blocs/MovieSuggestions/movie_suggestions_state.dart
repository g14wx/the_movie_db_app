part of 'movie_suggestions_bloc.dart';

@immutable
@freezed
class MovieSuggestionsState with _$MovieSuggestionsState {
  const factory MovieSuggestionsState.loaded({required List<Movie> movies}) = Loaded;
  const factory MovieSuggestionsState.error({required String msg}) = Error;
  const factory MovieSuggestionsState.loading() = Loading;
}
