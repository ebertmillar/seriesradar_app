
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/infrastructure/datasources/season_datasources_impl.dart';
import 'package:seriesradar_app/infrastructure/repositories/season_repository_impl.dart';

//Este repositorio es inmutable, solo es de lectura
final seasonRepositoryProvider  = Provider((ref) {
  return SeasonRepositoryImpl(SeasonDatasourcesImpl());
});