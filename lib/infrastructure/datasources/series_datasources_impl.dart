import 'package:dio/dio.dart';
import 'package:seriesradar_app/config/constans/environment.dart';
import 'package:seriesradar_app/domain/datasources/series_datasources.dart';
import 'package:seriesradar_app/domain/entities/serie.dart';
import 'package:seriesradar_app/domain/entities/serie_details.dart';
import 'package:seriesradar_app/infrastructure/mappers/serie_details_mapper.dart';
import 'package:seriesradar_app/infrastructure/mappers/serie_mapper.dart';
import 'package:seriesradar_app/infrastructure/models/movie_db/movie_db_response.dart';
import 'package:seriesradar_app/infrastructure/models/movie_db/serie_details_movie_db.dart';

class SeriesDatasourcesImpl extends SeriesDatasources {
  final dio = Dio(
      BaseOptions(baseUrl: 'https://api.themoviedb.org/3', queryParameters: {
    'api_key': Environment.theMovieDBKey,
    'language': 'es-ES' // Configuración del idioma
  }));

  List<Serie> _jsonToSeries(Map<String, dynamic> json) {
    final serieDBResponse = MovieDbResponse.fromJson(json);

    // Convertir los resultados en entidades Serie
    final List<Serie> series = serieDBResponse.results
        .map((seriedb) => SerieMapper.serieDBtoEntity(seriedb))
        .toList();

    return series;
  }

  

  @override
  Future<List<Serie>> discoverSeries({Map<String, dynamic>? filters}) {
    // TODO: implement discoverSeries
    throw UnimplementedError();
  }

  @override
  Future<List<Serie>> getPopularSeries({int page = 1}) async {
    final response = await dio.get('/tv/popular', queryParameters: {
      'page': page,
    });

    return _jsonToSeries(response.data);
  }

  @override
  Future<SerieDetails> getSerieDetails(String id) async {
    final response = await dio.get('/tv/$id');

    if(response.statusCode != 200) return throw Exception('Serie con id : $id no encontrado');

    final serieDetails = SerieDetailsMovieDB.fromJson(response.data);
    final SerieDetails serie = SerieDetailsMapper.serieDetailstoEntity(serieDetails);

    return serie;
  }

  @override
  Future<List<Serie>> getAiringToday({int page = 1}) async {
    final response = await dio.get('/tv/airing_today', queryParameters: {
      'page': page,
    });

    return _jsonToSeries(response.data);
  }
  
  @override
  Future<List<Serie>> getOnTheAir({int page = 1}) async {
    final response = await dio.get('/tv/on_the_air', queryParameters: {
      'page': page,
    });

    return _jsonToSeries(response.data);
  }
  
  @override
  Future<List<Serie>> getTopRated({int page = 1}) async {
    final response = await dio.get('/tv/top_rated', queryParameters: {
      'page': page,
    });

    return _jsonToSeries(response.data);
  }
  
  @override
  Future<List<Serie>> getSimilarSeries(int serieId) async {
    final response = await dio.get('/tv/$serieId/similar');
    return _jsonToSeries(response.data);
  }
}
