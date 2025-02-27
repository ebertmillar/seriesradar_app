import 'package:seriesradar_app/domain/datasources/local_storage_datasource.dart';
import 'package:seriesradar_app/domain/entities/serie.dart';
import 'package:seriesradar_app/domain/repositories/local_storage_repository.dart';

class LocalStorageRepositoryImpl extends LocalStorageRepository {
  final LocalStorageDatasource datasource;

  LocalStorageRepositoryImpl(this.datasource);

  @override
  Future<bool> isSerieFavorite(int serieId) {
    return datasource.isSerieFavorite(serieId);
  }

  @override
  Future<List<Serie>> loadSeries({int limit = 10, offset = 0}) {
    return datasource.loadSeries(limit: limit, offset: offset);
  }

  @override
  Future<void> toggleFavorite(Serie serie) {
    return datasource.toggleFavorite(serie);
  }
}
