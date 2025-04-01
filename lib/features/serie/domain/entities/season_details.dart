import 'package:seriesradar_app/features/serie/domain/entities/episode.dart';

class SeasonDetails {
  final String id;
  final DateTime? airDate;
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
