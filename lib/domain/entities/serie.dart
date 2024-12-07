import 'package:seriesradar_app/domain/entities/created_by.dart';
import 'package:seriesradar_app/domain/entities/genre.dart';
import 'package:seriesradar_app/domain/entities/network.dart';
import 'package:seriesradar_app/domain/entities/season.dart';
import 'package:seriesradar_app/domain/entities/t_episode_to_air.dart';

class Serie {
    final bool adult;
    final String backdropPath;
    final List<CreatedBy> createdBy;
    final List<dynamic> episodeRunTime;
    final DateTime firstAirDate;
    final List<Genre> genres;
    final String homepage;
    final int id;
    final bool inProduction;
    final List<String> languages;
    final DateTime lastAirDate;
    final TEpisodeToAir lastEpisodeToAir;
    final String name;
    final TEpisodeToAir nextEpisodeToAir;
    final List<Network> networks;
    final int numberOfEpisodes;
    final int numberOfSeasons;
    final List<String> originCountry;
    final String originalLanguage;
    final String originalName;
    final String overview;
    final double popularity;
    final String posterPath;
    final List<Network> productionCompanies;
    final List<Season> seasons;
    final String status;
    final String tagline;
    final String type;
    final double voteAverage;
    final int voteCount;

    Serie({
        required this.adult,
        required this.backdropPath,
        required this.createdBy,
        required this.episodeRunTime,
        required this.firstAirDate,
        required this.genres,
        required this.homepage,
        required this.id,
        required this.inProduction,
        required this.languages,
        required this.lastAirDate,
        required this.lastEpisodeToAir,
        required this.name,
        required this.nextEpisodeToAir,
        required this.networks,
        required this.numberOfEpisodes,
        required this.numberOfSeasons,
        required this.originCountry,
        required this.originalLanguage,
        required this.originalName,
        required this.overview,
        required this.popularity,
        required this.posterPath,
        required this.productionCompanies,
        required this.seasons,
        required this.status,
        required this.tagline,
        required this.type,
        required this.voteAverage,
        required this.voteCount,
    });

}