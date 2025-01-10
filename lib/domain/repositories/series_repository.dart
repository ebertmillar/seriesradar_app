import 'package:seriesradar_app/domain/entities/serie.dart';
import 'package:seriesradar_app/domain/entities/serie_details.dart';

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

  Future<List<Serie>> getSimilarSeries( int serieId );

  /// Descubre series aplicando filtros opcionales.
  /// [filters] puede incluir parámetros como "genre", "language", etc.
  Future<List<Serie>> discoverSeries({Map<String, dynamic>? filters});

}