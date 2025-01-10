import 'package:seriesradar_app/infrastructure/models/movie_db/serie_details.dart';

class Serie {
  final bool adult;
  final String? backdropPath;
  final List<String> genreIds;
  final int id;
  final List<String> originCountry;
  final String originalLanguage;
  final String originalName;
  final String overview;
  final double popularity;
  final String? posterPath;
  final DateTime firstAirDate;
  final String name;
  final double voteAverage;
  final int voteCount;
  final List<Network>? network;

  Serie({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.firstAirDate,
    required this.name,
    required this.voteAverage,
    required this.voteCount,
    this.network
  });
}