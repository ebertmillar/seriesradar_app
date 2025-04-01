import 'package:isar/isar.dart';

part 'episode.g.dart';

@collection
class Episode {
  Id? isarId;

  final DateTime? airDate;
  final int episodeNumber;
  @enumerated
  final EpisodeType episodeType;
  final int id;
  final String name;
  final String overview;
  final String productionCode;
  final int runtime;
  final int seasonNumber;
  final int showId;
  final String stillPath;
  final double voteAverage;
  final int voteCount;

  Episode({
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
}

enum EpisodeType { finale, standard, midSeason }
