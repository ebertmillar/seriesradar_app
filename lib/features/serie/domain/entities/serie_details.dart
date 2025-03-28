import 'package:isar/isar.dart';

part 'serie_details.g.dart';

@collection
class SerieDetails {
  Id? isarId;

  final bool adult;
  final String backdropPath;
  final List<CreatedBy> createdBy;
  final DateTime? firstAirDate;
  final List<Genre> genres;
  final String homepage;
  final int id;
  final bool inProduction;
  final List<String> languages;
  final DateTime? lastAirDate;
  final LastEpisodeToAir? lastEpisodeToAir;
  final String name;
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
  final List<ProductionCountry> productionCountries;
  final List<Season> seasons;
  final List<SpokenLanguage> spokenLanguages;
  final String status;
  final String tagline;
  final String type;
  final double voteAverage;
  final int voteCount;

  SerieDetails({
    required this.adult,
    required this.backdropPath,
    required this.createdBy,
    required this.firstAirDate,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.inProduction,
    required this.languages,
    required this.lastAirDate,
    required this.lastEpisodeToAir,
    required this.name,
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
    required this.productionCountries,
    required this.seasons,
    required this.spokenLanguages,
    required this.status,
    required this.tagline,
    required this.type,
    required this.voteAverage,
    required this.voteCount,
  });
}

@embedded
class CreatedBy {
  final int id;
  final String? creditId;
  final String name;
  final String originalName;
  final int? gender;
  final String? profilePath;

  CreatedBy({
    this.id = 0,
    this.creditId,
    this.name = '',
    this.originalName = '',
    this.gender,
    this.profilePath,
  });
}

@embedded
class Genre {
  final int id;
  final String name;

  Genre({
    this.id = 0,
    this.name = '',
  });
}

@embedded
class LastEpisodeToAir {
  final int id;
  final String name;
  final String overview;
  final double voteAverage;
  final int voteCount;
  final DateTime? airDate;
  final int episodeNumber;
  final String episodeType;
  final String productionCode;
  final int? runtime;
  final int seasonNumber;
  final int showId;
  final String? stillPath;

  LastEpisodeToAir({
    this.id = 0,
    this.name = '',
    this.overview = '',
    this.voteAverage = 0.0,
    this.voteCount = 0,
    this.airDate,
    this.episodeNumber = 0,
    this.episodeType = '',
    this.productionCode = '',
    this.runtime,
    this.seasonNumber = 0,
    this.showId = 0,
    this.stillPath,
  });
}

@embedded
class Network {
  final int id;
  final String? logoPath;
  final String name;
  final String originCountry;

  Network({
    this.id = 0,
    this.logoPath,
    this.name = '',
    this.originCountry = '',
  });
}

@embedded
class ProductionCountry {
  final String iso31661;
  final String name;

  ProductionCountry({
    this.iso31661 = '',
    this.name = '',
  });
}

@embedded
class Season {
  final DateTime? airDate;
  final int episodeCount;
  final int id;
  final String name;
  final String overview;
  final String posterPath;
  final int seasonNumber;
  final double voteAverage;

  Season({
    this.airDate,
    this.episodeCount = 0,
    this.id = 0,
    this.name = '',
    this.overview = '',
    this.posterPath = '',
    this.seasonNumber = 0,
    this.voteAverage = 0.0,
  });
}

@embedded
class SpokenLanguage {
  final String englishName;
  final String iso6391;
  final String name;

  SpokenLanguage({
    this.englishName = '',
    this.iso6391 = '',
    this.name = '',
  });
}
