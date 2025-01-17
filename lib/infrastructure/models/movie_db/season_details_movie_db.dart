
import 'package:seriesradar_app/domain/entities/season_details.dart';

class SeasonDetailsMovieDb {
  final String id;
  final DateTime airDate;
  final List<EpisodeMovieDB> episodes;
  final String name;
  final String overview;
  final int seasonDetailsId;
  final String? posterPath;
  final int seasonNumber;
  final double voteAverage;

  SeasonDetailsMovieDb({
    required this.id,
    required this.airDate,
    required this.episodes,
    required this.name,
    required this.overview,
    required this.seasonDetailsId,
    required this.posterPath,
    required this.seasonNumber,
    required this.voteAverage,
  });

  factory SeasonDetailsMovieDb.fromJson(Map<String, dynamic> json) =>
      SeasonDetailsMovieDb(
        id: json["_id"],
        airDate: DateTime.parse(json["air_date"]),
        episodes: List<EpisodeMovieDB>.from(
            json["episodes"].map((x) => EpisodeMovieDB.fromJson(x))),
        name: json["name"],
        overview: json["overview"],
        seasonDetailsId: json["id"],
        posterPath: json["poster_path"],
        seasonNumber: json["season_number"],
        voteAverage: json["vote_average"]?.toDouble(),
      );
}

class EpisodeMovieDB {
  final DateTime airDate;
  final int episodeNumber;
  final EpisodeType episodeType;
  final int id;
  final String name;
  final String overview;
  final String productionCode;
  final int? runtime;
  final int seasonNumber;
  final int showId;
  final String? stillPath;
  final double voteAverage;
  final int voteCount;

  EpisodeMovieDB({
    required this.airDate,
    required this.episodeNumber,
    required this.episodeType,
    required this.id,
    required this.name,
    required this.overview,
    required this.productionCode,
    required this.runtime,
    required this.seasonNumber,
    required this.showId,
    required this.stillPath,
    required this.voteAverage,
    required this.voteCount,
  });

  factory EpisodeMovieDB.fromJson(Map<String, dynamic> json) => EpisodeMovieDB(
        airDate: DateTime.parse(json["air_date"]),
        episodeNumber: json["episode_number"],
        episodeType: _episodeTypeFromString(json["episode_type"]),
        id: json["id"],
        name: json["name"],
        overview: json["overview"],
        productionCode: json["production_code"],
        runtime: json["runtime"],
        seasonNumber: json["season_number"],
        showId: json["show_id"],
        stillPath: json["still_path"],
        voteAverage: json["vote_average"]?.toDouble(),
        voteCount: json["vote_count"],
      );
}

EpisodeType _episodeTypeFromString(String type) {
  switch (type.toLowerCase()) {
    case 'finale':
      return EpisodeType.finale;
    case 'standard':
      return EpisodeType.standard;
    default:
      throw ArgumentError('Invalid episode type: $type');
  }
}
