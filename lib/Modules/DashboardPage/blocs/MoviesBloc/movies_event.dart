part of 'movies_bloc.dart';

@immutable
@freezed
class MoviesEvent with _$MoviesEvent {
  const factory MoviesEvent.fetchMovies() = FetchMovies;
}
