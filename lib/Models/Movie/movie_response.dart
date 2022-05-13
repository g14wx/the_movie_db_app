import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie.dart';

part 'movie_response.freezed.dart';
part 'movie_response.g.dart';


@immutable
@freezed
class MovieResponse with _$MovieResponse {
  const factory MovieResponse({required List<Movie> results}) = _MovieResponse;

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);
}
