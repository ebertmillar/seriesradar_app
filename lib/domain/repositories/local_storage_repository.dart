import 'package:seriesradar_app/domain/entities/serie.dart';

abstract class LocalStorageRepository {
  Future<void> toggleFavorite(Serie serie);

  Future<bool> isSerieFavorite(int serieId);

  Future<List<Serie>> loadSeries({int limit = 10, offset = 0});
}
