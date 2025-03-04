import 'package:seriesradar_app/domain/entities/serie_details.dart';

abstract class LocalStorageRepository {
  Future<void> toggleFavorite(SerieDetails serie);

  Future<bool> isSerieFavorite(int serieId);

  Future<List<SerieDetails>> loadSeries({int limit = 10, offset = 0});
}
