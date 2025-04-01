import 'package:seriesradar_app/features/auth/domain/entities/user.dart';
import 'package:seriesradar_app/features/serie/domain/datasources/local_storage_datasource.dart';
import 'package:seriesradar_app/features/serie/domain/entities/episode.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie_details.dart';
import 'package:seriesradar_app/features/serie/domain/repositories/local_storage_repository.dart';

class LocalStorageRepositoryImpl extends LocalStorageRepository {
  final LocalStorageDatasource datasource;

  LocalStorageRepositoryImpl(this.datasource);

  @override
  Future<void> toggleFavorite(SerieDetails serie, User user) async {
    return await datasource.toggleFavorite(serie, user);
  }

  @override
  Future<List<SerieDetails>> loadSeries({int limit = 10, offset = 0}) async {
    return await datasource.loadSeries(limit: limit, offset: offset);
  }

  @override
  Future<List<SerieDetails>> loadFavoriteSeries(User user,
      {int limit = 10, offset = 0}) async {
    return await datasource.loadFavoriteSeries(user,
        limit: limit, offset: offset);
  }

  @override
  Future<bool> isSerieFavorite(int serieId, User user) async {
    return await datasource.isSerieFavorite(serieId, user);
  }

  @override
  Future<bool> isEpisodeViewed(int episodeId, User user) async {
    return await datasource.isEpisodeViewed(episodeId, user);
  }

  @override
  Future<void> toggleEpisodeViewed(Episode episode, User user) async {
    return await datasource.toggleEpisodeViewed(episode, user);
  }
}
