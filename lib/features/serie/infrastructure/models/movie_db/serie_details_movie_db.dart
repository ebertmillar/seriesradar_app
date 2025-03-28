
class SerieDetailsMovieDB {
    final bool adult;
    final String backdropPath;
    final List<CreatedByMovieDB> createdBy;
    final List<dynamic> episodeRunTime;
    final DateTime? firstAirDate;
    final List<GenreMovieDB> genres;
    final String homepage;
    final int id;
    final bool inProduction;
    final List<String> languages;
    final DateTime? lastAirDate;
    final LastEpisodeToAirMovieDB? lastEpisodeToAir;
    final String name;
    final dynamic nextEpisodeToAir;
    final List<NetworkMovieDB> networks;
    final int numberOfEpisodes;
    final int numberOfSeasons;
    final List<String> originCountry;
    final String originalLanguage;
    final String originalName;
    final String overview;
    final double popularity;
    final String posterPath;
    final List<NetworkMovieDB> productionCompanies;
    final List<ProductionCountryMovieDB> productionCountries;
    final List<SeasonMovieDB> seasons;
    final List<SpokenLanguageMovieDB> spokenLanguages;
    final String status;
    final String tagline;
    final String type;
    final double voteAverage;
    final int voteCount;

    SerieDetailsMovieDB({
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
        required this.productionCountries,
        required this.seasons,
        required this.spokenLanguages,
        required this.status,
        required this.tagline,
        required this.type,
        required this.voteAverage,
        required this.voteCount,
    });

    factory SerieDetailsMovieDB.fromJson(Map<String, dynamic> json) => SerieDetailsMovieDB(
        adult: json["adult"] ?? false,
        backdropPath: json["backdrop_path"] ?? '',
        createdBy: json["created_by"] != null
            ? List<CreatedByMovieDB>.from(json["created_by"].map((x) => CreatedByMovieDB.fromJson(x)))
            : [],
        episodeRunTime: json["episode_run_time"] != null
            ? List<dynamic>.from(json["episode_run_time"].map((x) => x))
            : [],
        firstAirDate: json["first_air_date"] != null
            ? DateTime.parse(json["first_air_date"])
            : null,
        genres: json["genres"] != null
            ? List<GenreMovieDB>.from(json["genres"].map((x) => GenreMovieDB.fromJson(x)))
            : [],
        homepage: json["homepage"] ?? '',
        id: json["id"] ?? 0,
        inProduction: json["in_production"] ?? false,
        languages: json["languages"] != null
            ? List<String>.from(json["languages"].map((x) => x))
            : [],
        lastAirDate: json["last_air_date"] != null
            ? DateTime.parse(json["last_air_date"])
            : null,
        lastEpisodeToAir: json["last_episode_to_air"] != null
            ? LastEpisodeToAirMovieDB.fromJson(json["last_episode_to_air"])
            : null,
        name: json["name"] ?? 'Sin nombre',
        nextEpisodeToAir: json["next_episode_to_air"],
        networks: json["networks"] != null
            ? List<NetworkMovieDB>.from(json["networks"].map((x) => NetworkMovieDB.fromJson(x)))
            : [],
        numberOfEpisodes: json["number_of_episodes"] ?? 0,
        numberOfSeasons: json["number_of_seasons"] ?? 0,
        originCountry: json["origin_country"] != null
            ? List<String>.from(json["origin_country"].map((x) => x))
            : [],
        originalLanguage: json["original_language"] ?? 'Desconocido',
        originalName: json["original_name"] ?? '',
        overview: json["overview"] ?? 'Descripción no disponible',
        popularity: json["popularity"]?.toDouble() ?? 0.0,
        posterPath: json["poster_path"] ?? '',
        productionCompanies: json["production_companies"] != null
            ? List<NetworkMovieDB>.from(json["production_companies"].map((x) => NetworkMovieDB.fromJson(x)))
            : [],
        productionCountries: json["production_countries"] != null
            ? List<ProductionCountryMovieDB>.from(json["production_countries"].map((x) => ProductionCountryMovieDB.fromJson(x)))
            : [],
        seasons: json["seasons"] != null
            ? List<SeasonMovieDB>.from(json["seasons"].map((x) => SeasonMovieDB.fromJson(x)))
            : [],
        spokenLanguages: json["spoken_languages"] != null
            ? List<SpokenLanguageMovieDB>.from(json["spoken_languages"].map((x) => SpokenLanguageMovieDB.fromJson(x)))
            : [],
        status: json["status"] ?? 'Desconocido',
        tagline: json["tagline"] ?? '',
        type: json["type"] ?? 'Desconocido',
        voteAverage: json["vote_average"]?.toDouble() ?? 0.0,
        voteCount: json["vote_count"] ?? 0,
    );

    Map<String, dynamic> toJson() => {
        "adult": adult,
        "backdrop_path": backdropPath,
        "created_by": List<dynamic>.from(createdBy.map((x) => x.toJson())),
        "episode_run_time": List<dynamic>.from(episodeRunTime.map((x) => x)),
        "first_air_date": "${firstAirDate?.year.toString().padLeft(4, '0')}-${firstAirDate?.month.toString().padLeft(2, '0')}-${firstAirDate?.day.toString().padLeft(2, '0')}",
        "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
        "homepage": homepage,
        "id": id,
        "in_production": inProduction,
        "languages": List<dynamic>.from(languages.map((x) => x)),
        "last_air_date": "${lastAirDate?.year.toString().padLeft(4, '0')}-${lastAirDate?.month.toString().padLeft(2, '0')}-${lastAirDate?.day.toString().padLeft(2, '0')}",
        "last_episode_to_air": lastEpisodeToAir?.toJson(),
        "name": name,
        "next_episode_to_air": nextEpisodeToAir,
        "networks": List<dynamic>.from(networks.map((x) => x.toJson())),
        "number_of_episodes": numberOfEpisodes,
        "number_of_seasons": numberOfSeasons,
        "origin_country": List<dynamic>.from(originCountry.map((x) => x)),
        "original_language": originalLanguage,
        "original_name": originalName,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "production_companies": List<dynamic>.from(productionCompanies.map((x) => x.toJson())),
        "production_countries": List<dynamic>.from(productionCountries.map((x) => x.toJson())),
        "seasons": List<dynamic>.from(seasons.map((x) => x.toJson())),
        "spoken_languages": List<dynamic>.from(spokenLanguages.map((x) => x.toJson())),
        "status": status,
        "tagline": tagline,
        "type": type,
        "vote_average": voteAverage,
        "vote_count": voteCount,
    };
}

class CreatedByMovieDB {
    final int id;
    final String creditId;
    final String name;
    final String originalName;
    final int gender;
    final String profilePath;

    CreatedByMovieDB({
        required this.id,
        required this.creditId,
        required this.name,
        required this.originalName,
        required this.gender,
        required this.profilePath,
    });

    factory CreatedByMovieDB.fromJson(Map<String, dynamic> json) => CreatedByMovieDB(
        id: json["id"],
        creditId: json["credit_id"],
        name: json["name"],
        originalName: json["original_name"],
        gender: json["gender"],
        profilePath: json["profile_path"] 
          ?? 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "credit_id": creditId,
        "name": name,
        "original_name": originalName,
        "gender": gender,
        "profile_path": profilePath,
    };
}

class GenreMovieDB {
    final int id;
    final String name;

    GenreMovieDB({
        required this.id,
        required this.name,
    });

    factory GenreMovieDB.fromJson(Map<String, dynamic> json) => GenreMovieDB(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}

class LastEpisodeToAirMovieDB {
    final int id;
    final String name;
    final String overview;
    final double voteAverage;
    final int voteCount;
    final DateTime airDate;
    final int episodeNumber;
    final String episodeType;
    final String productionCode;
    final int? runtime;
    final int seasonNumber;
    final int showId;
    final String? stillPath;

    LastEpisodeToAirMovieDB({
        required this.id,
        required this.name,
        required this.overview,
        required this.voteAverage,
        required this.voteCount,
        required this.airDate,
        required this.episodeNumber,
        required this.episodeType,
        required this.productionCode,
        required this.runtime,
        required this.seasonNumber,
        required this.showId,
        required this.stillPath,
    });

    factory LastEpisodeToAirMovieDB.fromJson(Map<String, dynamic> json) => LastEpisodeToAirMovieDB(
        id: json["id"],
        name: json["name"],
        overview: json["overview"],
        voteAverage: json["vote_average"]?.toDouble(),
        voteCount: json["vote_count"],
        airDate: DateTime.parse(json["air_date"]),
        episodeNumber: json["episode_number"],
        episodeType: json["episode_type"],
        productionCode: json["production_code"],
        runtime: json["runtime"],
        seasonNumber: json["season_number"],
        showId: json["show_id"],
        stillPath: json["still_path"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "overview": overview,
        "vote_average": voteAverage,
        "vote_count": voteCount,
        "air_date": "${airDate.year.toString().padLeft(4, '0')}-${airDate.month.toString().padLeft(2, '0')}-${airDate.day.toString().padLeft(2, '0')}",
        "episode_number": episodeNumber,
        "episode_type": episodeType,
        "production_code": productionCode,
        "runtime": runtime,
        "season_number": seasonNumber,
        "show_id": showId,
        "still_path": stillPath,
    };
}

class NetworkMovieDB {
    final int id;
    final String? logoPath;
    final String name;
    final String originCountry;

    NetworkMovieDB({
        required this.id,
        required this.logoPath,
        required this.name,
        required this.originCountry,
    });

    factory NetworkMovieDB.fromJson(Map<String, dynamic> json) => NetworkMovieDB(
        id: json["id"],
        logoPath: json["logo_path"],
        name: json["name"],
        originCountry: json["origin_country"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "logo_path": logoPath,
        "name": name,
        "origin_country": originCountry,
    };
}

class ProductionCountryMovieDB {
    final String iso31661;
    final String name;

    ProductionCountryMovieDB({
        required this.iso31661,
        required this.name,
    });

    factory ProductionCountryMovieDB.fromJson(Map<String, dynamic> json) => ProductionCountryMovieDB(
        iso31661: json["iso_3166_1"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "iso_3166_1": iso31661,
        "name": name,
    };
}

class SeasonMovieDB {
    final DateTime? airDate;
    final int episodeCount;
    final int id;
    final String name;
    final String overview;
    final String posterPath;
    final int seasonNumber;
    final double voteAverage;

    SeasonMovieDB({
        required this.airDate,
        required this.episodeCount,
        required this.id,
        required this.name,
        required this.overview,
        required this.posterPath,
        required this.seasonNumber,
        required this.voteAverage,
    });

    factory SeasonMovieDB.fromJson(Map<String, dynamic> json) => SeasonMovieDB(
        airDate: (json["air_date"] != null && json["air_date"] is String && json["air_date"].isNotEmpty)
        ? DateTime.parse(json["air_date"] as String)
        : null,
        episodeCount: json["episode_count"],
        id: json["id"],
        name: json["name"],
        overview: json["overview"],
        posterPath: json["poster_path"] ?? '',
        seasonNumber: json["season_number"],
        voteAverage: json["vote_average"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "air_date": "${airDate?.year.toString().padLeft(4, '0')}-${airDate?.month.toString().padLeft(2, '0')}-${airDate?.day.toString().padLeft(2, '0')}",
        "episode_count": episodeCount,
        "id": id,
        "name": name,
        "overview": overview,
        "poster_path": posterPath,
        "season_number": seasonNumber,
        "vote_average": voteAverage,
    };
}

class SpokenLanguageMovieDB {
    final String englishName;
    final String iso6391;
    final String name;

    SpokenLanguageMovieDB({
        required this.englishName,
        required this.iso6391,
        required this.name,
    });

    factory SpokenLanguageMovieDB.fromJson(Map<String, dynamic> json) => SpokenLanguageMovieDB(
        englishName: json["english_name"],
        iso6391: json["iso_639_1"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "english_name": englishName,
        "iso_639_1": iso6391,
        "name": name,
    };
}
