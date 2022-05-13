import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
const factory Movie({required String title, required int id, required String? release_date, required String overview, required double vote_average,String? poster_path}) = _Movie;
factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}