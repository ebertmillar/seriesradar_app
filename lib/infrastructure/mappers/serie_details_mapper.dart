import 'package:seriesradar_app/domain/entities/serie_details.dart';
import 'package:seriesradar_app/infrastructure/models/movie_db/serie_details_movie_db.dart';

class SerieDetailsMapper {
  static SerieDetails serieDetailstoEntity(SerieDetailsMovieDB serieDetails) =>
      SerieDetails(
        adult: serieDetails.adult,
        backdropPath: _getImageUrl(serieDetails.backdropPath),
        createdBy: serieDetails.createdBy
            .map((creator) => CreatedByMapper.createdByToEntity(creator))
            .toList(),
        episodeRunTime: serieDetails.episodeRunTime,
        firstAirDate: serieDetails.firstAirDate,
        genres: serieDetails.genres
            .map((genre) => GenreMapper.genreToEntity(genre))
            .toList(),
        homepage: serieDetails.homepage,
        id: serieDetails.id,
        inProduction: serieDetails.inProduction,
        languages: serieDetails.languages,
        lastAirDate: serieDetails.lastAirDate,
        lastEpisodeToAir: serieDetails.lastEpisodeToAir != null
            ? LastEpisodeToAirMapper.lastEpisodeToAirToEntity(
                serieDetails.lastEpisodeToAir!)
            : null,
        name: serieDetails.name,
        nextEpisodeToAir: serieDetails.nextEpisodeToAir,
        networks: serieDetails.networks
            .map((networks) => NetworkMapper.netowrkToEntity(networks))
            .toList(),
        numberOfEpisodes: serieDetails.numberOfEpisodes,
        numberOfSeasons: serieDetails.numberOfSeasons,
        originCountry: serieDetails.originCountry,
        originalLanguage: serieDetails.originalLanguage,
        originalName: serieDetails.originalName,
        overview: serieDetails.overview,
        popularity: serieDetails.popularity,
        posterPath: _getImageUrl(serieDetails.posterPath),
        productionCompanies: serieDetails.productionCompanies
            .map((networks) => NetworkMapper.netowrkToEntity(networks))
            .toList(),
        productionCountries: serieDetails.productionCountries
            .map((productionCountry) =>
                ProductionCountryMapper.productionCountryToEntity(
                    productionCountry))
            .toList(),
        seasons: serieDetails.seasons
            .map((season) => SeasonMapper.seasonToEntity(season))
            .toList(),
        spokenLanguages: serieDetails.spokenLanguages
            .map((spokenLenguage) =>
                SpokenLenguageMapper.spokenLanguageToEntity(spokenLenguage))
            .toList(),
        status: serieDetails.status,
        tagline: serieDetails.tagline,
        type: serieDetails.type,
        voteAverage: serieDetails.voteAverage,
        voteCount: serieDetails.voteCount,
      );

  static String _getImageUrl(String? path) {
    return (path != null && path.isNotEmpty)
        ? 'https://image.tmdb.org/t/p/w500$path'
        : 'https://static.displate.com/857x1200/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg';
  }
}

class CreatedByMapper {
  static CreatedBy createdByToEntity(CreatedByMovieDB creator) => CreatedBy(
        id: creator.id,
        creditId: creator.creditId,
        name: creator.name,
        originalName: creator.originalName,
        gender: creator.gender,
        profilePath: creator.profilePath,
      );
}

class GenreMapper {
  static Genre genreToEntity(GenreMovieDB genre) => Genre(
        id: genre.id,
        name: genre.name,
      );
}

class LastEpisodeToAirMapper {
  static LastEpisodeToAir lastEpisodeToAirToEntity(
      LastEpisodeToAirMovieDB lastEpisode) {
    return LastEpisodeToAir(
      airDate: lastEpisode.airDate,
      episodeNumber: lastEpisode.episodeNumber,
      id: lastEpisode.id,
      name: lastEpisode.name,
      overview: lastEpisode.overview,
      productionCode: lastEpisode.productionCode,
      seasonNumber: lastEpisode.seasonNumber,
      stillPath: lastEpisode.stillPath,
      voteAverage: lastEpisode.voteAverage,
      voteCount: lastEpisode.voteCount,
      episodeType: lastEpisode.episodeType,
      runtime: lastEpisode.runtime,
      showId: lastEpisode.showId,
    );
  }
}

class NetworkMapper {
  static Network netowrkToEntity(NetworkMovieDB network) => Network(
      id: network.id,
      name: network.name,
      logoPath: _getNetworkLogoUrl(network.logoPath),
      originCountry: network.originCountry);

  static String _getNetworkLogoUrl(String? path) {
    return (path != null && path.isNotEmpty)
        ? 'https://image.tmdb.org/t/p/w500$path'
        : 'https://via.placeholder.com/500x500.png?text=No+Logo';
  }
}

class ProductionCountryMapper {
  static ProductionCountry productionCountryToEntity(
          ProductionCountryMovieDB productionCountry) =>
      ProductionCountry(
        iso31661: productionCountry.iso31661,
        name: productionCountry.name,
      );
}

class SeasonMapper {
  static Season seasonToEntity(SeasonMovieDB season) => Season(
      airDate: season.airDate,
      episodeCount: season.episodeCount,
      id: season.id,
      name: season.name,
      overview: season.overview,
      posterPath: _getSeasonPosterUrl(season.posterPath),
      seasonNumber: season.seasonNumber,
      voteAverage: season.voteAverage);

      static String _getSeasonPosterUrl(String? path) {
        return (path != null && path.isNotEmpty)
            ? 'https://image.tmdb.org/t/p/w500$path'
            : 'https://via.placeholder.com/500x500.png?text=No+Poster';
      }
}

class SpokenLenguageMapper {
  static SpokenLanguage spokenLanguageToEntity(
          SpokenLanguageMovieDB spokenLenguage) =>
      SpokenLanguage(
          englishName: spokenLenguage.englishName,
          iso6391: spokenLenguage.iso6391,
          name: spokenLenguage.name);
}
