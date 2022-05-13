part of 'movies_bloc.dart';

@immutable
@freezed
class MovieState with _$MovieState {
  const factory MovieState.loadingState() = LoadingState;
  const factory MovieState.errorFetching({required String message}) = ErrorFetching;
  const factory MovieState.loaded({required List<Movie> movies}) = Loaded;
}