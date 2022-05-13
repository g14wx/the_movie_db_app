part of 'movies_search_bloc.dart';

@immutable
@freezed
class MoviesSearchState with _$MoviesSearchState {
  const factory MoviesSearchState.loadingSearchState() = LoadingSearchState;
  const factory MoviesSearchState.loadedSearchState({required List<Movie> movies}) = LoadedSearchState;
  const factory MoviesSearchState.errorSearch({required String message}) = ErrorSearch;
  const factory MoviesSearchState.initialState() = InitialState;
}

