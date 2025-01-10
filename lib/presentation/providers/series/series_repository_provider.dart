
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/infrastructure/datasources/series_datasources_impl.dart';
import 'package:seriesradar_app/infrastructure/repositories/series_repository_impl.dart';

//Este repositorio es inmutable, solo es de lectura
final serieRepositoryProvider  = Provider((ref) {
  return SeriesRepositoryImpl(SeriesDatasourcesImpl());
});