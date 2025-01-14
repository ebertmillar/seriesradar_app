

import 'package:dio/dio.dart';
import 'package:seriesradar_app/config/constans/environment.dart';
import 'package:seriesradar_app/domain/datasources/season_datasources.dart';
import 'package:seriesradar_app/domain/entities/season_details.dart';
import 'package:seriesradar_app/infrastructure/mappers/season_details_mapper.dart';
import 'package:seriesradar_app/infrastructure/models/movie_db/season_details_movie_db.dart';

class SeasonDatasourcesImpl extends SeasonDatasources{

  final dio = Dio(
      BaseOptions(baseUrl: 'https://api.themoviedb.org/3', queryParameters: {
    'api_key': Environment.theMovieDBKey,
    'language': 'es-ES' // Configuración del idioma
  }));


  @override
  Future<SeasonDetails> getSeasonDetails(int serieId, int seasonNumber) async {
    final response = await dio.get('/tv/$serieId/season/$seasonNumber');

    final seasonDetails = SeasonDetailsMovieDb.fromJson(response.data);
    final SeasonDetails season = SeasonDetailsMapper.serieDetailstoEntity(seasonDetails);

    return season;
  }


}