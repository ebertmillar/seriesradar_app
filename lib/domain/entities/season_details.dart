class SeasonDetails {
  final String id;
  final DateTime airDate;
  final List<Episode> episodes;
  final String name;
  final String overview;
  final int seasonDetailsId;
  final String posterPath;
  final int seasonNumber;
  final double voteAverage;

  SeasonDetails({
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
}

enum EpisodeType {
  finale,
  standard
}

class Episode {
  final DateTime airDate;
  final int episodeNumber;
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

