import 'package:seriesradar_app/features/auth/domain/entities/user.dart';
import 'package:seriesradar_app/features/serie/domain/entities/episode.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie_details.dart';

abstract class LocalStorageRepository {
  Future<void> toggleFavorite(SerieDetails serie, User user);

  Future<List<SerieDetails>> loadSeries({int limit = 10, offset = 0});

  Future<List<SerieDetails>> loadFavoriteSeries(User user,
      {int limit = 10, offset = 0});

  Future<bool> isSerieFavorite(int serieId, User user);

  Future<void> toggleEpisodeViewed(Episode episode, User user);

  Future<bool> isEpisodeViewed(int episodeId, User user);
}
