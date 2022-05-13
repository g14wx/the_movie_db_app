part of 'movie_suggestions_bloc.dart';

@immutable
@freezed
class MovieSuggestionsEvent with _$MovieSuggestionsEvent {
  const factory MovieSuggestionsEvent.fetchSuggestions({required String apiKey, required int movieId }) = FetchSuggestions;

}
