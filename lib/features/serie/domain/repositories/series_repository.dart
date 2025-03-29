import 'package:seriesradar_app/features/serie/domain/entities/content_rating.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie_details.dart';
import 'package:seriesradar_app/features/serie/domain/entities/video.dart';

abstract class SeriesRepository {
  /// Obtiene una lista de series populares con soporte de paginación.
  Future<List<Serie>> getPopularSeries({int page = 1});

  /// Obtiene una lista de series populares con soporte de paginación.
  Future<List<Serie>> getAiringToday({int page = 1});

  /// Obtiene una lista de series populares con soporte de paginación.
  Future<List<Serie>> getOnTheAir({int page = 1});

  /// Obtiene una lista de series populares con soporte de paginación.
  Future<List<Serie>> getTopRated({int page = 1});

  /// Obtiene detalles completos de una serie por su [id].
  Future<SerieDetails> getSerieDetails(String id);

  Future<List<Serie>> getRecommendationsSeries(int serieId);

  Future<List<Serie>> getSimilarSeries(int serieId);

  /// Descubre series aplicando filtros opcionales.
  Future<List<Serie>> searchSeries(String query);

  /// Obitiene series meediante nombre plataforma de streaming con soporte de paginación.
  Future<List<Serie>> getSeriesByProvider(String providerName, {int page = 1});

  Future<List<Video>> getYoutubeVideosById(int serieId);

  Future<List<ContentRating>> getContentRatingById(int serieId);
}
