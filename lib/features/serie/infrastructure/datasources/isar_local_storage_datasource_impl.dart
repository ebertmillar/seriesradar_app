import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:seriesradar_app/features/auth/domain/entities/user.dart';
import 'package:seriesradar_app/features/serie/domain/datasources/local_storage_datasource.dart';
import 'package:seriesradar_app/features/serie/domain/entities/episode.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie_details.dart';

class IsarLocalStorageDatasourceImpl extends LocalStorageDatasource {
  late Future<Isar> db;

  IsarLocalStorageDatasourceImpl() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [SerieDetailsSchema, UserSchema, EpisodeSchema],
        inspector: true,
        directory: dir.path,
      );
    }

    return Future.value(Isar.getInstance());
  }

  // @override
  // Future<bool> isSerieFavorite(int serieId) async {
  //   final isar = await db;

  //   final SerieDetails? isFavoriteSerie =
  //       await isar.serieDetails.filter().idEqualTo(serieId).findFirst();

  //   return isFavoriteSerie != null;
  // }

  @override
  Future<bool> isSerieFavorite(int serieId, User user) async {
    // Cargar la lista de favoritos del usuario
    await user.favoritesSeries.load();

    // Verificar si la serie está en la lista de favoritos del usuario
    return user.favoritesSeries.any((serie) => serie.id == serieId);
  }

  @override
  Future<List<SerieDetails>> loadSeries({int limit = 10, offset = 0}) async {
    final isar = await db;
    return isar.serieDetails.where().offset(offset).limit(limit).findAll();
  }

  // @override
  // Future<void> toggleFavorite(SerieDetails serie, User user) async {
  //   final isar = await db;

  //   try {
  //     await isar.writeTxn(() async {
  //       // Buscar si el usuario ya tiene esta serie en favoritos
  //       final isFavorite =
  //           user.favoritesSeries.where((s) => s.id == serie.id).isNotEmpty;

  //       if (isFavorite) {
  //         // Si ya está en favoritos, la eliminamos
  //         user.favoritesSeries.removeWhere((s) => s.id == serie.id);
  //         print("Serie eliminada de favoritos: ${serie.name}");
  //       } else {
  //         // Crear una copia para evitar conflicto entre usuarios
  //         final newSerie = SerieDetails(
  //           adult: serie.adult,
  //           backdropPath: serie.backdropPath,
  //           createdBy: serie.createdBy,
  //           firstAirDate: serie.firstAirDate,
  //           genres: serie.genres,
  //           homepage: serie.homepage,
  //           id: serie.id,
  //           inProduction: serie.inProduction,
  //           languages: serie.languages,
  //           lastAirDate: serie.lastAirDate,
  //           lastEpisodeToAir: serie.lastEpisodeToAir,
  //           name: serie.name,
  //           networks: serie.networks,
  //           numberOfEpisodes: serie.numberOfEpisodes,
  //           numberOfSeasons: serie.numberOfSeasons,
  //           originCountry: serie.originCountry,
  //           originalLanguage: serie.originalLanguage,
  //           originalName: serie.originalName,
  //           overview: serie.overview,
  //           popularity: serie.popularity,
  //           posterPath: serie.posterPath,
  //           productionCompanies: serie.productionCompanies,
  //           productionCountries: serie.productionCountries,
  //           seasons: serie.seasons,
  //           spokenLanguages: serie.spokenLanguages,
  //           status: serie.status,
  //           tagline: serie.tagline,
  //           type: serie.type,
  //           voteAverage: serie.voteAverage,
  //           voteCount: serie.voteCount,
  //         );
  //         // Copia otros atributos si es necesario...

  //         // Guardar la copia de la serie en la base de datos
  //         await isar.serieDetails.put(newSerie);

  //         // Agregar la copia a favoritos del usuario
  //         user.favoritesSeries.add(newSerie);
  //         user.favoritesSeries.save();
  //         print("Serie agregada a favoritos: ${newSerie.name}");
  //       }

  //       // Guardar el usuario actualizado
  //       await isar.users.put(user);
  //     });
  //   } catch (e) {
  //     print("Error en toggleFavorite: $e");
  //   }
  // }

  @override
  Future<void> toggleFavorite(SerieDetails serie, User user) async {
    final isar = await db;

    try {
      await isar.writeTxn(() async {
        // Buscar si la serie ya existe en la base de datos
        final existingSerie =
            await isar.serieDetails.filter().idEqualTo(serie.id).findFirst();
        final serieToSave =
            existingSerie ?? serie; // Usa la existente o guarda la nueva

        if (user.favoritesSeries.contains(serieToSave)) {
          // Si ya está en favoritos, la eliminamos
          user.favoritesSeries.remove(serieToSave);
          user.favoritesSeries.save();
        } else {
          // Guardar la serie en la base de datos solo si es nueva
          if (existingSerie == null) {
            await isar.serieDetails.put(serieToSave);
          }

          // Agregar la serie a los favoritos del usuario
          user.favoritesSeries.add(serieToSave);
          user.favoritesSeries.save();
        }

        // Guardar los cambios en el usuario
        await isar.users.put(user);
      });
    } catch (e) {
      if (kDebugMode) {
        print("Error en toggleFavorite: $e");
      }
    }
  }

  @override
  Future<List<SerieDetails>> loadFavoriteSeries(User user,
      {int limit = 10, offset = 0}) async {
    // Cargar las series favoritas asociadas al usuario
    await user.favoritesSeries
        .load(); // Esto carga los elementos de la relación

    // Aplica la paginación en la lista de favoritos
    final favoriteSeries = user.favoritesSeries.toList();
    final paginatedSeries = favoriteSeries.skip(offset).take(limit).toList();

    return paginatedSeries;
  }

  @override
  Future<bool> isEpisodeViewed(int episodeId, User user) async {
    await user.viewedEpisodes.load(); // Cargar la lista de episodios vistos

    return user.viewedEpisodes.any((episode) => episode.id == episodeId);
  }

  @override
  Future<void> toggleEpisodeViewed(Episode episode, User user) async {
    final isar = await db;

    try {
      await isar.writeTxn(() async {
        // Buscar si el episodio ya está en la base de datos
        final existingEpisode =
            await isar.episodes.filter().idEqualTo(episode.id).findFirst();
        final episodeToSave = existingEpisode ?? episode;

        if (user.viewedEpisodes.contains(episodeToSave)) {
          // Si ya está marcado como visto, lo eliminamos
          user.viewedEpisodes.remove(episodeToSave);
          user.viewedEpisodes.save();
        } else {
          // Guardar el episodio en la base de datos si es nuevo
          if (existingEpisode == null) {
            await isar.episodes.put(episodeToSave);
          }

          // Agregar el episodio a la lista de vistos del usuario
          user.viewedEpisodes.add(episodeToSave);
          user.viewedEpisodes.save();
        }

        // Guardar cambios en el usuario
        await isar.users.put(user);
      });
    } catch (e) {
      if (kDebugMode) {
        print("Error en toggleEpisodeViewed: $e");
      }
    }
  }
}
