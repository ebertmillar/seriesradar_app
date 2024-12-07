import 'package:seriesradar_app/domain/entities/serie.dart';

abstract class SeriesDatasources {
  
  /// Obtiene una lista de series populares con soporte de paginación.
  Future<List<Serie>> getPopularSeries({int page = 1});

  /// Obtiene detalles completos de una serie por su [id].
  Future<Serie> getSerieDetails(int id);

  /// Descubre series aplicando filtros opcionales.
  /// [filters] puede incluir parámetros como "genre", "language", etc.
  Future<List<Serie>> discoverSeries({Map<String, dynamic>? filters});
}
