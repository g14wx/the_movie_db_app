// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      title: json['title'] as String,
      id: json['id'] as int,
      release_date: json['release_date'] as String?,
      overview: json['overview'] as String,
      vote_average: (json['vote_average'] as num).toDouble(),
      poster_path: json['poster_path'] as String?,
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'release_date': instance.release_date,
      'overview': instance.overview,
      'vote_average': instance.vote_average,
      'poster_path': instance.poster_path,
    };
